import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import '../data/flower_database.dart';
import '../models/flower_info.dart';

enum FlowerAccent {
  red,
  orange,
  yellow,
  pink,
  purple,
  blue,
  lightBlue,
  white,
  dark,
  light,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Interpreter? _interpreter;
  List<String> _labels = [];

  File? _image;
  String _prediction = '';
  double _confidence = 0.0;
  bool _loading = true;

  final ImagePicker _picker = ImagePicker();

  Color _accentColor = const Color.fromARGB(255, 220, 147, 240);

  @override
  void initState() {
    super.initState();
    _loadModelAndLabels();
  }

  Future<void> _loadModelAndLabels() async {
    _interpreter = await Interpreter.fromAsset(
      'assets/models/flowers50.tflite',
      options: InterpreterOptions()..threads = 4,
    );

    final labelsData = await rootBundle.loadString('assets/models/labels.txt');
    _labels = labelsData.split('\n').where((e) => e.isNotEmpty).toList();

    setState(() => _loading = false);
  }

  @override
  void dispose() {
    _interpreter?.close();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile == null) return;

    setState(() {
      _image = File(pickedFile.path);
      _prediction = '';
      _confidence = 0.0;
    });

    _runInference(_image!);
  }

  Float32List _preprocessImage(File imageFile) {
    final bytes = imageFile.readAsBytesSync();
    final decodedImage = img.decodeImage(bytes)!;
    final resizedImage = img.copyResize(decodedImage, width: 224, height: 224);

    final input = Float32List(1 * 224 * 224 * 3);
    int index = 0;

    for (int y = 0; y < 224; y++) {
      for (int x = 0; x < 224; x++) {
        final pixel = resizedImage.getPixel(x, y);
        input[index++] = (pixel.r / 127.5) - 1.0;
        input[index++] = (pixel.g / 127.5) - 1.0;
        input[index++] = (pixel.b / 127.5) - 1.0;
      }
    }
    return input;
  }

  void _runInference(File imageFile) {
    final input = _preprocessImage(imageFile);
    final output = List.generate(1, (_) => List.filled(_labels.length, 0.0));

    _interpreter!.run(input.reshape([1, 224, 224, 3]), output);

    final probabilities = output[0];
    int maxIndex = 0;
    double maxScore = probabilities[0];

    for (int i = 1; i < probabilities.length; i++) {
      if (probabilities[i] > maxScore) {
        maxScore = probabilities[i];
        maxIndex = i;
      }
    }

    setState(() {
      _prediction = _labels[maxIndex];
      _confidence = maxScore * 100;
      _accentColor = _accentColorForFlower(_prediction);
    });
  }

  FlowerInfo? get _flowerInfo => flowerDatabase[_prediction];

  final Map<FlowerAccent, List<String>> flowerAccentGroups = {
    FlowerAccent.red: [
      "Roses",
      "Marigold",
      "Snapdragon",
      "Hibiscus",
      "Geranium",
      "Poppy",
      "Amaryllis",
      "Poinsettia",
    ],
    FlowerAccent.orange: ["Dahlia", "Chrysanthemum", "Zinnia"],
    FlowerAccent.yellow: [
      "Sunflower",
      "Daffodil",
      "Freesia",
      "Pansy",
      "Buttercup",
      "PersianButtercup",
    ],
    FlowerAccent.pink: [
      "Tulip",
      "Lily",
      "Carnation",
      "Peony",
      "Magnolia",
      "Camellia",
      "Cosmos",
      "BleedingHeart",
    ],
    FlowerAccent.purple: [
      "Orchid",
      "Lavender",
      "Iris",
      "Aster",
      "Clematis",
      "SweetPea",
      "Lilac",
      "Foxglove",
      "Viola",
      "MorningGlory",
    ],
    FlowerAccent.blue: [
      "Hydrangea",
      "Hyacinth",
      "Gladiolas",
      "Delphinium",
      "Begonia",
      "Petunia",
      "BachelorGÇÖsButton",
    ],
    FlowerAccent.lightBlue: ["ForgetMeNot"],
    FlowerAccent.white: [
      "Daisy",
      "Jasmine",
      "Gardenia",
      "Azalea",
      "LilyoftheValley",
      "CallaLily",
      "Anemone",
    ],
  };

  Color _accentColorForFlower(String flower) {
    for (final entry in flowerAccentGroups.entries) {
      if (entry.value.contains(flower)) {
        switch (entry.key) {
          case FlowerAccent.red:
            return Colors.redAccent;
          case FlowerAccent.orange:
            return Colors.deepOrangeAccent;
          case FlowerAccent.yellow:
            return Colors.amber;
          case FlowerAccent.pink:
            return Colors.pinkAccent;
          case FlowerAccent.purple:
            return Colors.deepPurpleAccent;
          case FlowerAccent.blue:
            return Colors.blueAccent;
          case FlowerAccent.lightBlue:
            return Colors.lightBlueAccent;
          case FlowerAccent.white:
            return Colors.grey.shade300;
          default:
            return _accentColor;
        }
      }
    }
    return _accentColor;
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flower Classifier'),
        backgroundColor: _accentColor,
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [_accentColor.withOpacity(0.15), Colors.white],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              if (_image == null) _buildIntroSection(),

              if (_image != null) ...[
                Image.file(_image!, height: 250),
                const SizedBox(height: 20),
              ],

              if (_prediction.isNotEmpty) ...[
                Text(
                  'Prediction: $_prediction',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Confidence: ${_confidence.toStringAsFixed(2)}%',
                  style: const TextStyle(fontSize: 18),
                ),
              ],

              if (_prediction.isNotEmpty && _flowerInfo != null)
                AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: _accentColor, width: 2),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _infoRow("Common Names", _flowerInfo!.commonNames),
                      _infoRow("Scientific Name", _flowerInfo!.scientificName),
                      _infoRow("Family", _flowerInfo!.family),
                      _infoRow("Genus", _flowerInfo!.genus),
                      _infoSection("Morphology", _flowerInfo!.morphology),
                      _infoSection("Toxicity", _flowerInfo!.toxicity),
                      _infoSection("Origin & Habitat", _flowerInfo!.origin),
                      _infoSection("Fun Facts", _flowerInfo!.funFacts),
                    ],
                  ),
                ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _accentColor,
                      foregroundColor: Colors.black,
                    ),
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Camera'),
                    onPressed: () => _pickImage(ImageSource.camera),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _accentColor,
                      foregroundColor: Colors.black,
                    ),
                    icon: const Icon(Icons.photo),
                    label: const Text('Gallery'),
                    onPressed: () => _pickImage(ImageSource.gallery),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        children: [
          Icon(Icons.local_florist, size: 80, color: _accentColor),
          const SizedBox(height: 20),
          const Text(
            'Flower Classification App',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'Capture or select a flower image and let the AI identify it instantly.\n'
            'Works fully offline using on-device machine learning.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black87),
          children: [
            TextSpan(
              text: "$title: ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }

  Widget _infoSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(content, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

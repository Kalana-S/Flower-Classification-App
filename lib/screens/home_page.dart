import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

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

  @override
  void initState() {
    super.initState();
    _loadModelAndLabels();
  }

  Future<void> _loadModelAndLabels() async {
    _interpreter = await Interpreter.fromAsset(
      'assets/models/flowers_model.tflite',
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
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Flower Classifier')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_image != null) Image.file(_image!, height: 250),

            const SizedBox(height: 20),

            if (_prediction.isNotEmpty)
              Column(
                children: [
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
              ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.camera_alt),
                  label: const Text('Camera'),
                  onPressed: () => _pickImage(ImageSource.camera),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.photo),
                  label: const Text('Gallery'),
                  onPressed: () => _pickImage(ImageSource.gallery),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

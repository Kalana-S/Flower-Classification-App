# 🌸 Flower Classification App (Flutter)

- Flower Classification App is a cross-platform **Flutter application** that identifies flower species from images using an **offline Machine Learning model**.
- Users can **capture a photo using the camera** or **select one from the gallery**, and the app predicts the flower entirely **on-device** using **TensorFlow Lite**.
- The app works **100% offline**, ensuring **fast inference**, user privacy, and no **internet dependency**.

---

## 🚀 Key Features

### Image Input

- Capture flower images using the **device camera**
- Select images from the **photo gallery**

### Offline AI Prediction

- On-device **image classification**
- No cloud APIs, no network calls
- Displays:
    - **Predicted flower name**
    - **Confidence percentage**

### Flower Information Panel

- Displays **basic information** about the predicted flower
- Smooth animated **info cards**
- Clean separation between prediction result and flower details

### Modern UI & UX

- Vibrant Material-based design
- Smooth animations for result & info card
- Supports **multy color themes**
- Optimized for mobile performance

### Supported Flower Categories

- Trained on **50 flower classes**
- Based on a **Kaggle 299 Flowers Dataset**
- Scalable architecture (easy to add more classes)

---

## 🤖 Machine Learning: Offline Image Classification

The app uses a **Convolutional Neural Network (CNN)** with **Transfer Learning** to achieve high accuracy while remaining lightweight for mobile devices.

### Model Details

- **Architecture:** MobileNetV2 (Transfer Learning)
- **Framework:** TensorFlow / Keras
- **Inference Engine:** TensorFlow Lite
- **Execution:** Fully offline (on-device)

### Dataset Used

- **Kaggle 299 Flowers Dataset**
- 50 flower classes
- Custom split into:
    - `train`
    - `val`
    - `test`
- Preprocessed and trained using **Google Colab**

### ML Workflow

- Dataset prepared and split offline
- Model trained in **Google Colab**
- Converted to **TensorFlow Lite (.tflite)**
- Integrated into Flutter using `tflite_flutter`
- Real-time inference on mobile device

---

## 🛠️ Technologies Used

### App Development

- Flutter (Dart)

### Machine Learning

- TensorFlow
- TensorFlow Lite
- CNN with Transfer Learning (MobileNetV2)

### Flutter Packages

- `tflite_flutter`
- `image_picker`
- `image`

### Tools

- Android Studio
- VS Code
- Google Colab
- Flutter SDK

---

## 📦 Installation & Setup

1. **Clone this repository:**
   ```bash
   git clone https://github.com/Kalana-S/Flower-Classification-App.git
   cd Flower-Classification-App

2. **Get all dependencies:**
   ```bash
   flutter pub get

3. **Run the app:**
   ```bash
   flutter run

4. **(Optional) Build a release APK:**
   ```bash
   flutter build apk --release

---

## 💡 How to Use

1. Launch the app
2. Select **Camera** or **Gallery**.
3. Capture or select a flower image.
4. The app predicts:
    - **Predicted flower**
    - **Confidence score**
    - **Flower information**
5. Results appear instantly — **no internet required**.

---

## 🎥 App Demo (Screen Recording)

Full app workflow — UI → Input → Offline Prediction<br>

---

## 🔒 Offline & Privacy-Friendly

- Works completely offline
- No data collection
- No images uploaded to servers
- All ML inference runs locally on the device

---

## 🤝 Contribution

Contributions are welcome.<br>
Feel free to fork the repository and submit a pull request for:
  - UI enhancements
  - Performance optimizations
  - Additional flower data
  - New features

---

## 📜 License

This project is open-source and available under the **MIT License**.

---

💡 *Built with Flutter, powered by offline AI using TensorFlow Lite.*

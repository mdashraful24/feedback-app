# DIU Feedback App

A Flutter-based mobile application designed for students of Daffodil International University (DIU) to provide anonymous feedback on courses, teachers, and campus facilities. This prototype emphasizes simplicity, user safety, and ease of use without requiring any login or personal information.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the App](#running-the-app)
- [Building for Android](#building-for-android)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- **Categorized Feedback**: Users can select from three main categories:
  - Courses
  - Teachers
  - Campus Facilities
- **Anonymous Submissions**: Checkbox option to submit feedback anonymously, ensuring user privacy and safety.
- **Intuitive Interface**: Clean, mobile-friendly UI built with Flutter's Material Design.
- **No Authentication**: Simplified prototype without login requirements for quick access.
- **Confirmation Dialog**: Immediate feedback upon submission with option to reset the form.
- **Validation**: Ensures a category is selected and feedback text is provided before submission.

## Screenshots

*(Insert app screenshots here)*

## Prerequisites

Before running this project, ensure you have the following installed:

- **Flutter SDK**: Version 3.0 or higher. Download from [flutter.dev](https://flutter.dev/docs/get-started/install).
- **Dart SDK**: Included with Flutter.
- **Android Studio**: For Android development, including the Android SDK and emulator.
- **Git**: For cloning the repository.

Run `flutter doctor` to verify your setup.

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/feedback_app.git
   cd feedback_app
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Verify Setup**:
   ```bash
   flutter doctor
   ```

## Running the App

### On Emulator/Device

1. Connect an Android device or start an emulator.
2. Run the app:
   ```bash
   flutter run
   ```

### On Web (for Testing)

```bash
flutter run -d chrome
```

## Building for Android

To generate an APK for Android devices:

1. Ensure the Android SDK is configured.
2. Build the release APK:
   ```bash
   flutter build apk --release
   ```
3. Locate the APK at `build/app/outputs/flutter-apk/app-release.apk`.

For a debug APK:
```bash
flutter build apk
```

## Usage

1. Launch the app on your device.
2. Select a feedback category using the radio buttons.
3. Type your feedback in the provided text field.
4. Optionally, check "Submit Anonymously" for privacy.
5. Tap "Submit Feedback".
6. A confirmation dialog will appear; tap "OK" to reset the form.

## Project Structure

```
feedback_app/
├── android/                 # Android-specific files
├── ios/                     # iOS-specific files (if applicable)
├── lib/
│   └── main.dart            # Main application code
├── test/                    # Unit tests
├── pubspec.yaml             # Flutter dependencies and configuration
├── README.md                # This file
└── ...                      # Other Flutter-generated files
```

## Dependencies

This project uses the following main dependencies (defined in `pubspec.yaml`):

- **Flutter SDK**: Framework for building the UI.
- **Material Design**: For UI components (included in Flutter).

No external packages are used in this prototype to keep it simple.

## Contributing

We welcome contributions! To contribute:

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/your-feature`.
3. Commit your changes: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature/your-feature`.
5. Open a pull request.

Please ensure your code follows Flutter best practices and includes tests where applicable.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For questions, suggestions, or issues:

- **Email**: your-email@example.com
- **GitHub Issues**: [Create an issue](https://github.com/yourusername/feedback_app/issues)

---

**Note**: This is a prototype application. For a production version, consider integrating a backend for data storage, adding user authentication, implementing data analytics, and enhancing security measures.

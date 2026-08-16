# Mason App Template

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A complete Flutter application template built with Mason CLI. This brick provides a well-structured Flutter project with best practices, clean architecture layers, and pre-configured setup for rapid development.

_Built with [Mason][1] 🧱_

## Features ✨

- 📦 **Clean Architecture**: Organized project structure with core, data, domain, and presentation layers
- 🎨 **Pre-configured UI**: Assets, icons, and image directories ready to use
- 🔌 **Cross-platform**: Full support for iOS, Android, macOS, Windows, Linux, and Web
- 📱 **Flutter Best Practices**: Following Flutter and Dart best practices
- 🚀 **Ready to Deploy**: Pre-configured build files for all platforms
- 📊 **Testing Setup**: Includes widget test configuration
- 📝 **Well Organized**: Logical folder structure for scalable development

## Prerequisites

Before you begin, ensure you have installed:

- **Flutter SDK** - [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK** - (Included with Flutter)
- **Git** - [Install Git](https://git-scm.com/downloads)
- **Mason CLI** - Install using the steps below

## Setup Instructions 🚀

### Step 1: Install Mason CLI

Install Mason globally using Dart:

```bash
dart pub global activate mason_cli
```

**Verify installation:**
```bash
mason --version
```

### Step 2: Initialize Mason in Your Project

Navigate to the directory where you want to use this template and initialize Mason:

```bash
mason init
```

This creates a `mason.yaml` file in your project directory.

### Step 3: Add the Remote Template

Add this Mason template from GitHub to your project:

```bash
mason add remote --source git https://github.com/yourusername/mason_app_temlate.git
```

Or if you prefer to use a specific branch:

```bash
mason add remote --source git https://github.com/yourusername/mason_app_temlate.git --ref main
```

### Step 4: Generate Your App

Generate a new Flutter app from the template:

```bash
mason make remote
```

You will be prompted to enter:
- **project_name**: The name of your new Flutter project (e.g., `my_awesome_app`)

### Step 5: Install Dependencies

Navigate to your generated project and get Flutter dependencies:

```bash
cd {{project_name}}
flutter pub get
```

### Step 6: Run Your App

Run the application on your default device or emulator:

```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart              # Entry point
├── app.dart              # App configuration
├── core/                 # Core functionality
│   ├── const/            # Constants
│   ├── gen/              # Generated files
│   ├── logger/           # Logging utilities
│   ├── providers/        # Provider setup
│   ├── routes/           # Route definitions
│   └── static/           # Static files
├── data/                 # Data layer
│   ├── models/           # Data models
│   ├── repositories/     # Repository implementations
│   └── services/         # External services
├── domain/               # Domain layer
│   └── entities/         # Business entities
└── src/                  # Feature modules
    ├── feature/          # Feature implementations
    └── widgets/          # Reusable widgets
```

## Available Commands

### Flutter Commands

```bash
# Get dependencies
flutter pub get

# Run the app
flutter run

# Run in release mode
flutter run --release

# Run on a specific device
flutter run -d <device_id>

# Build APK (Android)
flutter build apk

# Build iOS app
flutter build ios

# Build web app
flutter build web

# Run tests
flutter test

# Format code
dart format lib/

# Analyze code
dart analyze
```

### Mason Commands

```bash
# List all bricks
mason list

# View brick details
mason describe remote

# Remove a brick
mason remove remote

# Get help
mason --help
```

## Customization

After generating your project, you can customize:

- **App icons**: Replace files in `assets/icons/`
- **Splash images**: Update `assets/images/`
- **Package name**: Modify in platform-specific settings
- **App name**: Update in `pubspec.yaml` and platform configs
- **Themes**: Customize in `lib/core/`

## Resources

- [Official Mason Documentation](https://docs.brickhub.dev)
- [Mason GitHub Repository](https://github.com/felangel/mason)
- [Flutter Documentation](https://flutter.dev/docs)
- [Clean Architecture in Flutter](https://resocoder.com/clean-architecture)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)

## Troubleshooting

### Mason command not found
Ensure Mason is installed and the Dart pub cache bin directory is in your PATH:
```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

### Flutter dependencies not installing
Clear the cache and try again:
```bash
flutter clean
flutter pub get
```

### Port already in use (running tests)
Specify a different port:
```bash
flutter run --verbose -d android-device -a "--dart-define=PORT=8888"
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For issues and questions:
- 📧 Create an issue on [GitHub Issues](https://github.com/yourusername/mason_app_temlate/issues)
- 💬 Check [Mason Discussions](https://github.com/felangel/mason/discussions)
- 📚 Read the [Flutter Documentation](https://flutter.dev/docs)

---

**Happy coding! 🚀**

_Built with ❤️ using Mason_

[1]: https://github.com/felangel/mason

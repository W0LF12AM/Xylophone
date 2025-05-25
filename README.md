# 🎹 Flutter Xylophone App

This is a simple Flutter app that plays xylophone notes when colored buttons are pressed. It's a great beginner project to learn about:

- Building layouts with `Column` and `Expanded`
- Creating reusable widgets
- Playing audio assets with the `audioplayers` package
- Managing local assets in Flutter

## 🚀 What I Learned

- How to use `audioplayers` to play sound files
- How to create reusable button widgets
- How to organize UI using `Column` and `Expanded`
- How to use `TextButton` with custom styles
- How to link sound files with button interactions
- How to register audio files in `pubspec.yaml`

## 🧩 Features

- 7 colorful keys, each representing a musical note
- Plays a `.wav` file when a key is pressed
- Clean, full-screen UI

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  audioplayers: ^5.2.1
```

## 📂 Source Code
- The *playSound()* function plays the note based on the button clicked. Each button is created using the *noteButton()* method for reusability.

## 🛠 How to Run
- Clone the repo
- Run flutter pub get (*Make sure your assets are in place*)
- Run flutter run

## 🙌 Credits
- Thanks to the Flutter & audioplayers communities for making this learning journey awesome!

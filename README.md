# FlutterWrapIt

FlutterWrapIt is a Flutter package that provides wrapper classes for common Flutter methods, making it easier and more convenient to use these methods in your Flutter projects.

## Features

- Provides wrapper classes for common Flutter methods such as showModalBottomSheet, showDialog, etc.
- Simplifies the usage of these methods by providing a more intuitive and streamlined interface.
- Allows for additional customization and functionality beyond the standard Flutter methods.

## Installation

To use this package, add `flutter_wrap_it` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

## Usage

Import the package where you want to use it, and then use the provided wrapper classes in your code. Here's an example of how to use the `ShowModalBottomSheet` class:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_wrap_it/flutter_wrap_it.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterWrapIt Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            BottomModalSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  color: Colors.white,
                  child: const Center(
                    child: Text('This is a modal bottom sheet'),
                  ),
                );
              },
            );
          },
          child: const Text('Show Modal Bottom Sheet'),
        ),
      ),
    );
  }
}



```

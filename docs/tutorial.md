---
title: Flutter Tutorial
---

# Flutter Tutorial

## Goal

In this tutorial you will learn how to create a simple app for mobile devices with Flutter. We will focus on the key concepts of Flutter and create a classic lifecounter app for card games like MTG, Yu-Gi-Oh or SWU.

## Requirements

We will assume that you already know the basics of Dart and the concepts of object-oriented-programming. It would also be helpful if you know a bit of HTML, CSS and JS because then Flutter looks like a mix of these three.

## What you'll learn

In this tutorial we will focus on three main topics:

- You will learn what a widget is and how to use the **most important widgets**.

- You will learn how you can create **simple buttons**, which can execute functions. (work in progress)

- You will learn the difference between **stateful and stateless widgets** and how you can change the properties ofa widget while your app is running. (work in progress)

## Tutorial

### Creating an Flutter app

After installing the flutter SDK you can run the following command in your shell to create an empty flutter project.

```bash
flutter create lifecounter --empty
```

You may be overwhelmed by the amount of folders and files but the only file you will edit is the *main.dart* in the *lib* folder because here happens the magic!

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp()); // starts the app
}

class MainApp extends StatelessWidget { // MainApp gets inherit by StatelessWidget
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) { // overrides the build function
    return const MaterialApp(
      home: Scaffold( // defines the structre of your app
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
```

### What are widgets?

In flutter everything is a widget. A widget is an immutable part of the user interface. In flutter you have a huge library of various widgets you can choose from.

#### Most important widgets:

- **Scaffold:** will expand to fill the available space of the screen

- **Container:** will surround the childs with padding
  
  - **Center:** similar to *Container* but the childs will be centered
  
  - **Columns:** contains multiple children and it will display them as a column
  
  - **Rows:** contains multiple children and it will display them as a row

- **Text:** will display some type of text or numbers

- **Expanded:** will expand a child of a Row or Column so that it fills the available space

#### Example:

The following piece of code will create the basic layout of our main screen. It will create a column with two halfs, which will both use 50% of the available space.

Each half contains a Container with a specific color and a row with two buttons and a number for the healthpoints.

```dart
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child: Text("+")),
                    Center(child: Text("30")),
                    Center(child: Text("-")),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child: Text("+")),
                    Center(child: Text("30")),
                    Center(child: Text("-")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

### Creating Buttons with functions

*work in progress*

### Stateful vs. Stateless widgets

*work in progress*

## Result

When you run the app by using the following command, a new chrome tab should be opened where the app is running.

```bash
flutter run -d chrome
```

The app should look similar to the following *.gif* with less style (which we didn't look at)

<img title="" src="file:///C:/GitHub%20Repos/Lernperiode-13/docs/lifecounter.gif" alt="lifecounter.gif" width="275">

## Error

When you get the following error message, you need to ensure that you don't return the Scaffold directly. You need to return a MaterialApp widget with an Scaffold as a child instead.

<img src="file:///C:/Users/robin/AppData/Roaming/marktext/images/2026-01-30-17-10-50-image.png" title="" alt="" width="363">
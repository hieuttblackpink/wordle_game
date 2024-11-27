# wordle_game_mobile_application_project

# Wordle Game 🎮

Wordle Game is a mobile application that simulates the popular Wordle game, built with Flutter. This project is designed for coding interviews and showcases mobile app development skills using Flutter.

---

## Table of Contents
- [Overview](#overview)
- [Main Features](#main-features)
- [Description](#description)
- [Folder Structure](#folder-structure)
- [Software Requirements](#software-requirements)
- [Installation Guide](#installation-guide)
- [Screenshots](#screenshots)

---

## Overview

The Wordle Game project is a mobile app where players can solve vocabulary puzzles by guessing the correct word within a limited number of tries. With a simple and user-friendly interface, players can enjoy this fun game right on their mobile devices.

## Main Features

- **Word Guessing**: Players guess a 5-letter word and receive feedback on the accuracy of each letter.
- **Limited Attempts**: Players have only 6 tries to find the correct word.
- **Color Feedback**: Each letter in the guessed word changes color, helping players identify correct letters or incorrect positions.
- **User-Friendly Interface**: Simple yet engaging design to enhance player experience.

## Description

- **State Management**: The app uses the `provider` package for efficient and scalable state management.
- **Data Modeling**: The `freezed` package is used for defining immutable data classes and parsing JSON data, making the model layer clean and maintainable.

## Folder Structure

```plaintext
wordle_game/
├── lib/                     # Main source code folder
│   ├── resources/           # Resources app
|   │   ├── models/              # Data models
│   |   ├── network/             # Network-related files for API requests
│   |   ├── provider/            # State management and providers for the app
│   |   └── repository/          # Repositories handling data sources
│   ├── utils/               # Utility functions used throughout the application
│   ├── screen/              # Primary app screens (game screen, help screen)
│   ├── widgets/             # Custom widgets used in the app
│   └── main.dart            # Application entry point
└── pubspec.yaml             # Flutter configuration file (includes dependencies)
```

## Software Requirements

- **Flutter**: 3.19.6 or later
- **Dart**: 3.3.4 or later
- **Supported Devices**: iOS 13+ or Android 8.0+

## Installation Guide

1. **Clone the repository**:
   ```bash
   git clone https://github.com/hieuttblackpink/votee_mobile_coding_interview_project.git
   cd wordle_game
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

## Screenshots

![Alt text](/screenshot/welcome.png)
![Alt text](/screenshot/main.png)
![Alt text](/screenshot/help.png)

#

**Enjoy playing with Wordle Game!**

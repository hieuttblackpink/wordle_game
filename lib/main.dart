import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/screen/wordle_game_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordle',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        color: Colors.black26,
        child: const WordleGameScreen(),
      ),
    );
  }
}

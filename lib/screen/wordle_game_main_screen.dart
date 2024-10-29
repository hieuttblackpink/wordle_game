import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/widgets/main_screen/wordle_game_board.dart';
import 'package:votee_mobile_coding_interview_project/widgets/main_screen/wordle_game_header.dart';
import 'package:votee_mobile_coding_interview_project/widgets/main_screen/wordle_game_keyboard.dart';
import 'package:votee_mobile_coding_interview_project/widgets/main_screen/wordle_game_message.dart';
import 'package:votee_mobile_coding_interview_project/widgets/main_screen/wordle_game_submit.dart';

class WordleGameScreen extends StatefulWidget {
  const WordleGameScreen({super.key});

  @override
  State<WordleGameScreen> createState() => _WordleGameScreenState();
}

class _WordleGameScreenState extends State<WordleGameScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WordleGameProvider()..initWordleGame())
      ],
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WordleGameHeader(),
              SizedBox(height: 10),
              WordleGameMessage(),
              SizedBox(height: 10),
              WordleGameBoard(),
              SizedBox(height: 10),
              WordleGameKeyboard(),
              SizedBox(height: 10),
              WordleGameSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}

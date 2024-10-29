import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameMessage extends StatefulWidget {
  const WordleGameMessage({super.key});

  @override
  State<WordleGameMessage> createState() => _WordleGameMessageState();
}

class _WordleGameMessageState extends State<WordleGameMessage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WordleGameProvider>(builder: (context, gameProvider, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            gameProvider.wordleMessage,
            style: const TextStyle(
              fontSize: 20,
              decoration: TextDecoration.none,
              color: kWhiteColor,
            ),
          ),
        ],
      );
    });
  }
}

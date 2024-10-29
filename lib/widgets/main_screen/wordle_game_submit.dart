import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameSubmit extends StatefulWidget {
  const WordleGameSubmit({super.key});

  @override
  State<WordleGameSubmit> createState() => _WordleGameSubmitState();
}

class _WordleGameSubmitState extends State<WordleGameSubmit> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WordleGameProvider>(
      builder: (context, gameProvider, child) {
        return GestureDetector(
          onTap: () {
            gameProvider.guessWord();
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kBlueColor,
            ),
            alignment: Alignment.center,
            child: const Text(
              "Submit",
              style: TextStyle(
                color: kWhiteColor,
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            ),
          ),
        );
      },
    );
  }
}

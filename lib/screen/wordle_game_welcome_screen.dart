import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/screen/wordle_game_main_screen.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameWelcomeScreen extends StatefulWidget {
  const WordleGameWelcomeScreen({super.key});

  @override
  State<WordleGameWelcomeScreen> createState() => _WordleGameWelcomeScreenState();
}

class _WordleGameWelcomeScreenState extends State<WordleGameWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "WORDLE\nGAME",
          textAlign: TextAlign.center,
          style: TextStyle(color: kWhiteColor, fontSize: 80, decoration: TextDecoration.none),
        ),
        const SizedBox(height: 200),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const WordleGameScreen()));
          },
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kBlueColor,
            ),
            alignment: Alignment.center,
            child: const Text(
              "PLAY",
              style: TextStyle(
                color: kWhiteColor,
                decoration: TextDecoration.none,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

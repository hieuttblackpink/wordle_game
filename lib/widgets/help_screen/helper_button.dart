import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameHelpButton extends StatelessWidget {
  const WordleGameHelpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 75,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBlueColor,
        ),
        alignment: Alignment.center,
        child: const Text(
          "Got it",
          style: TextStyle(
            color: kWhiteColor,
            decoration: TextDecoration.none,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

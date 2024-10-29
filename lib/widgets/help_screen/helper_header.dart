import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameHelpHeader extends StatelessWidget {
  const WordleGameHelpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 30,
            color: kWhiteColor,
          ),
        ),
        const Text(
          "HOW TO PLAY",
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 30,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(width: 30),
      ],
    );
  }
}

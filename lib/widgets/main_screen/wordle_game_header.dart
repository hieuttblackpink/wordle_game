import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';
import 'package:votee_mobile_coding_interview_project/screen/wordle_game_help_screen.dart';

class WordleGameHeader extends StatefulWidget {
  const WordleGameHeader({super.key});

  @override
  State<WordleGameHeader> createState() => _WordleGameHeaderState();
}

class _WordleGameHeaderState extends State<WordleGameHeader> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WordleGameProvider>(
      builder: (context, gameProvider, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const WordleGameHelp()));
                },
                icon: const Icon(
                  Icons.help_rounded,
                  color: kWhiteColor,
                  size: 35,
                )),
            const Text(
              "WORDLE",
              style: TextStyle(color: kWhiteColor, fontSize: 30, decoration: TextDecoration.none),
            ),
            IconButton(
                onPressed: () {
                  gameProvider.resetGame();
                },
                icon: const Icon(
                  Icons.replay_circle_filled_rounded,
                  color: kWhiteColor,
                  size: 35,
                )),
          ],
        );
      },
    );
  }
}

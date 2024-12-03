import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_timer_provider.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_string.dart';

class WordleGameHeader extends StatefulWidget {
  const WordleGameHeader({super.key});

  @override
  State<WordleGameHeader> createState() => _WordleGameHeaderState();
}

class _WordleGameHeaderState extends State<WordleGameHeader> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<WordleGameProvider, WordleGameTimerProvider>(
      builder: (context, gameProvider, timerProvider, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: kWhiteColor,
                    size: 35,
                  )),
            ),
            Container(
              height: 50,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.2,
              alignment: Alignment.centerRight,
              child: Text(
                StringFormat.formatTime(timerProvider.guessTime),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: kWhiteColor,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

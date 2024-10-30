import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameBoard extends StatefulWidget {
  const WordleGameBoard({super.key});

  @override
  State<WordleGameBoard> createState() => _WordleGameBoardState();
}

class _WordleGameBoardState extends State<WordleGameBoard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WordleGameProvider>(
      builder: (context, gameProvider, child) {
        return Column(
          children: gameProvider.wordleBoardList.map((e) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: e.map((letter) {
                return Container(
                  height: 64,
                  width: 64,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: gameProvider.rowId == gameProvider.wordleBoardList.indexOf(e)
                              ? kBlueColor
                              : kGreyColor,
                          width: gameProvider.rowId == gameProvider.wordleBoardList.indexOf(e)
                              ? 3
                              : 1),
                      borderRadius: BorderRadius.circular(10),
                      color: (() {
                        switch (letter.status) {
                          case "absent":
                            return kAbsentColor;
                          case "present":
                            return kPresentColor;
                          case "correct":
                            return kCorrectColor;
                        }
                      }())),
                  alignment: Alignment.center,
                  child: Text(
                    letter.letter ?? "",
                    style: const TextStyle(
                      color: kWhiteColor,
                      decoration: TextDecoration.none,
                    ),
                  ),
                );
              }).toList(),
            );
          }).toList(),
        );
      },
    );
  }
}

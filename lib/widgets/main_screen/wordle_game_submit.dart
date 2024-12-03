// ignore_for_file: use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_timer_provider.dart';
import 'package:votee_mobile_coding_interview_project/screen/wordle_game_help_screen.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_enum.dart';

class WordleGameSubmit extends StatefulWidget {
  const WordleGameSubmit({super.key});

  @override
  State<WordleGameSubmit> createState() => _WordleGameSubmitState();
}

class _WordleGameSubmitState extends State<WordleGameSubmit> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<WordleGameProvider, WordleGameTimerProvider>(
      builder: (ctx, gameProvider, timerProvider, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const WordleGameHelp()));
              },
              child: Container(
                  width: 40,
                  height: 40,
                  decoration:
                      BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.help_rounded,
                    color: kBlackColor,
                    size: 30,
                  )),
            ),
            GestureDetector(
              onTap: () async {
                if (gameProvider.wordleGameStatus == WordleGameStatus.playing) {
                  await gameProvider.guessWord();
                }
                if (gameProvider.networkStatus == NetworkResponseType.error) {
                  showAlertError(context);
                }
                if (gameProvider.wordleGameStatus != WordleGameStatus.playing) {
                  timerProvider.stopTimer();
                }
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBlueColor,
                ),
                alignment: Alignment.center,
                child: gameProvider.networkStatus == NetworkResponseType.loading
                    ? const CircularProgressIndicator(color: kWhiteColor)
                    : const Text(
                        "Submit",
                        style: TextStyle(
                          color: kWhiteColor,
                          decoration: TextDecoration.none,
                          fontSize: 30,
                        ),
                      ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                gameProvider.resetGame();
                timerProvider.restartTimer();
              },
              child: Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(180 / 360),
                  child: SvgPicture.asset(
                    "assets/next.svg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void showAlertError(BuildContext context) {
    AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.noHeader,
            dismissOnBackKeyPress: false,
            dismissOnTouchOutside: false,
            btnOkOnPress: () {},
            title: 'Network error',
            desc: 'There is an error when connect to server',
            titleTextStyle:
                const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: kRedColor),
            descTextStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: kBlackColor))
        .show();
  }
}

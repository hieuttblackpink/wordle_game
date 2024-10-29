// ignore_for_file: use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
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
    return Consumer<WordleGameProvider>(
      builder: (ctx, gameProvider, child) {
        return GestureDetector(
          onTap: () async {
            await gameProvider.guessWord();
            if (gameProvider.networkStatus == NetworkResponseType.error) {
              showAlertError(context);
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

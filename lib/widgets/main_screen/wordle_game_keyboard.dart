import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votee_mobile_coding_interview_project/resources/provider/wordle_game_provider.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameKeyboard extends StatefulWidget {
  const WordleGameKeyboard({super.key});

  @override
  State<WordleGameKeyboard> createState() => _WordleGameKeyboardState();
}

class _WordleGameKeyboardState extends State<WordleGameKeyboard> {
  List keyboardRow1 = "QWERTYUIOP".split("");
  List keyboardRow2 = "ASDFGHJKL".split("");
  List keyboardRow3 = "ZXCVBNM".split("");

  @override
  Widget build(BuildContext context) {
    return Consumer<WordleGameProvider>(builder: (context, gameProvider, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildKeyboardRow(
            keyboardRow: keyboardRow1,
            onKeyTab: (key) {
              gameProvider.insertLetterToWord(letter: key);
            },
            mappingLetterStatus: gameProvider.mappingLetterStatus,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: buildKeyboardRow(
              keyboardRow: keyboardRow2,
              onKeyTab: (key) {
                gameProvider.insertLetterToWord(letter: key);
              },
              mappingLetterStatus: gameProvider.mappingLetterStatus,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                    width: 60,
                    height: 45,
                    padding: const EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(color: kBlackColor, borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.help_rounded,
                      color: kBlackColor,
                      size: 30,
                    )),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.height * 0.33,
                  child: buildKeyboardRow(
                    keyboardRow: keyboardRow3,
                    onKeyTab: (key) {
                      gameProvider.insertLetterToWord(letter: key);
                    },
                    mappingLetterStatus: gameProvider.mappingLetterStatus,
                  )),
              GestureDetector(
                onTap: () {
                  gameProvider.removeLetterInWord();
                },
                child: Container(
                    width: 60,
                    height: 45,
                    padding: const EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: const Icon(Icons.backspace, color: kRedColor)),
              ),
            ],
          ),
        ],
      );
    });
  }

  Widget buildKeyboardRow({
    required List keyboardRow,
    required Function(String key) onKeyTab,
    required Map<String, String> mappingLetterStatus,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: keyboardRow.map((e) {
        return GestureDetector(
          onTap: () {
            onKeyTab.call(e.toString());
          },
          child: Container(
            width: 40,
            height: 45,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: (() {
                  String status = mappingLetterStatus[e.toString()] ?? "";
                  switch (status) {
                    case "absent":
                      return kAbsentColor;
                    case "present":
                      return kPresentColor;
                    case "correct":
                      return kCorrectColor;
                    default:
                      return kWhiteColor;
                  }
                }()),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Text(
              e.toString(),
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.none,
                color: mappingLetterStatus[e.toString()] != null ? kWhiteColor : kBlackColor,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

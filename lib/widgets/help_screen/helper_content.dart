// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameHelpContent extends StatelessWidget {
  WordleGameHelpContent({super.key});

  List word = "HIEUT".split("");

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Guess the hidden word in 6 tries!\n\nThe tile colors will show how close you are",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            decoration: TextDecoration.none,
            fontSize: 19,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: word.map((e) {
            return Container(
              height: 64,
              width: 64,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: kGreyColor, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: (() {
                    switch (e.toString()) {
                      case "E":
                        return kPresentColor;
                      case "T":
                        return kCorrectColor;
                      default:
                        return kAbsentColor;
                    }
                  }())),
              alignment: Alignment.center,
              child: Text(
                e.toString(),
                style: const TextStyle(
                  color: kWhiteColor,
                  decoration: TextDecoration.none,
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 50),
        buildHelperContentItem("T"),
        const SizedBox(height: 20),
        buildHelperContentItem("E"),
        const SizedBox(height: 20),
        buildHelperContentItem("H"),
      ],
    );
  }

  Widget buildHelperContentItem(String letter) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          Container(
            height: 64,
            width: 64,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: kGreyColor, width: 1),
                borderRadius: BorderRadius.circular(10),
                color: (() {
                  switch (letter) {
                    case "E":
                      return kPresentColor;
                    case "T":
                      return kCorrectColor;
                    default:
                      return kAbsentColor;
                  }
                }())),
            alignment: Alignment.center,
            child: Text(
              letter,
              style: const TextStyle(
                color: kWhiteColor,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            alignment: Alignment.topLeft,
            width: 250,
            child: Text(
              (() {
                switch (letter) {
                  case "T":
                    return "Green letters are correctly placed";
                  case "E":
                    return "Yellow letters are not in the right place";
                  default:
                    return "Grey letters are not in the hidden word";
                }
              }()),
              softWrap: true,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: kWhiteColor,
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

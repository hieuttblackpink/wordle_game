import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';
import 'package:votee_mobile_coding_interview_project/widgets/help_screen/helper_button.dart';
import 'package:votee_mobile_coding_interview_project/widgets/help_screen/helper_content.dart';
import 'package:votee_mobile_coding_interview_project/widgets/help_screen/helper_header.dart';

class WordleGameHelp extends StatefulWidget {
  const WordleGameHelp({super.key});

  @override
  State<WordleGameHelp> createState() => _WordleGameHelpState();
}

class _WordleGameHelpState extends State<WordleGameHelp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlackColor,
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const WordleGameHelpHeader(),
          const SizedBox(height: 30),
          WordleGameHelpContent(),
          const SizedBox(height: 100),
          const WordleGameHelpButton(),
        ],
      ),
    );
  }
}

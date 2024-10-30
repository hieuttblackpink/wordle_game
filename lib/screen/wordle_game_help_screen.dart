import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const WordleGameHelpHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            WordleGameHelpContent(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const WordleGameHelpButton(),
          ],
        ),
      ),
    );
  }
}

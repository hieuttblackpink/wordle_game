import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/resources/database/db_provider.dart';
import 'package:votee_mobile_coding_interview_project/screen/wordle_game_welcome_screen.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBProvider.db.database;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordle',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Container(
        color: kBlackColor,
        child: const WordleGameWelcomeScreen(),
      ),
    );
  }
}

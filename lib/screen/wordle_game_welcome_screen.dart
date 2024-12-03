import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/screen/wordle_game_main_screen.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_colors.dart';

class WordleGameWelcomeScreen extends StatefulWidget {
  const WordleGameWelcomeScreen({super.key});

  @override
  State<WordleGameWelcomeScreen> createState() => _WordleGameWelcomeScreenState();
}

class _WordleGameWelcomeScreenState extends State<WordleGameWelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Alignment>? _topAlignAnimation;
  Animation<Alignment>? _bottomAlignAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 15));

    _topAlignAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
        weight: 1,
      ),
    ]).animate(_controller!);

    _bottomAlignAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
        weight: 1,
      ),
    ]).animate(_controller!);

    _controller?.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller!,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [
                  kBackRedColor,
                  // kBackOrangeColor,
                  // kBackYellowColor,
                  // kBackGreenColor,
                  // kBackBlueColor,
                  kBackIndigoColor,
                  //kBackPurpleColor,
                ],
                begin: _topAlignAnimation?.value ?? Alignment.topLeft,
                end: _bottomAlignAnimation?.value ?? Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Text(
                //   "WORDLE\nGAME",
                //   textAlign: TextAlign.center,
                //   style:
                //       TextStyle(color: kWhiteColor, fontSize: 80, decoration: TextDecoration.none),
                // ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SizedBox(height: 200),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => const WordleGameScreen()));
                  },
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: kPinkColor.shade300),
                      color: kWhiteColor,
                      boxShadow: const [
                        BoxShadow(
                          color: kPinkColor,
                          offset: Offset(0, 0),
                          blurStyle: BlurStyle.solid,
                          blurRadius: 50,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/ic_play.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    // const Text(
                    //   "PLAY",
                    //   style: TextStyle(
                    //     color: kWhiteColor,
                    //     decoration: TextDecoration.none,
                    //     fontSize: 50,
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

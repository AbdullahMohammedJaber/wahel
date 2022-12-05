import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Waheel',
                        textStyle: const TextStyle(
                            fontSize: 39.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        speed: const Duration(milliseconds: 280),
                      ),
                    ],
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    isRepeatingAnimation: false,
                    totalRepeatCount: 100,
                    stopPauseOnTap: true,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      "made love in 🇩🇿 ",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      alignment: Alignment.center,
                      duration: Duration(milliseconds: 1000),
                      rotateOut: false,

                    ),
                  ],
                  pause: const Duration(milliseconds: 800),
                  displayFullTextOnTap: true,
                  isRepeatingAnimation: false,
                  totalRepeatCount: 100,
                  stopPauseOnTap: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

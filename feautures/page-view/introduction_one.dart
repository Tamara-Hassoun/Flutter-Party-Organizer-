import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class introductionOne extends StatefulWidget {
  const introductionOne({super.key});

  @override
  State<introductionOne> createState() => _introductionOneState();
}

class _introductionOneState extends State<introductionOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 450,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff6a5381).withOpacity(.6),
            Color(0xff4c243b),
            Color(0xff7c5060),
            Colors.black.withOpacity(.5)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Image.asset(
              "lib/images/sapiens.png",
              width: 500,
            )),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'our app is a digital platform that allows users to discover, plan, and attend various events happening in your area or around you',
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 3000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  )),
            ),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

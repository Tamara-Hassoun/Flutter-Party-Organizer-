import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class introductionTwo extends StatefulWidget {
  const introductionTwo({super.key});

  @override
  State<introductionTwo> createState() => _introductionTwoState();
}

class _introductionTwoState extends State<introductionTwo> {
  var colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  var colorizeTextStyle = const TextStyle(
    fontSize: 47.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 450,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey, Color(0xffb2a3b5), Color(0xff91818a)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Image.asset(
              "lib/images/sapiens2.png",
              width: 500,
            )),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 400.0,
              child: Center(
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'make your event',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'see our evevts',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'just throw ',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'our application ',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

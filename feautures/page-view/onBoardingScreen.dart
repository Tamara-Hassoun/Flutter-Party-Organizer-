import 'package:flutter/material.dart';
import 'package:responsive/Feautured/login/Screen/login_screen.dart';
import 'package:responsive/Feautured/pageView/widgets/introductionThree.dart';
import 'package:responsive/Feautured/pageView/widgets/introduction_one.dart';
import 'package:responsive/Feautured/pageView/widgets/introduction_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  PageController pageController = PageController();
  bool inLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                inLastPage = (index == 2);
              });
            },
            controller: pageController,
            children: [introductionOne(), introductionTwo(), ScrollAnimation()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    pageController.jumpToPage(2);
                  },
                  child: Text(
                    "skip",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                ),
                inLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "done",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}

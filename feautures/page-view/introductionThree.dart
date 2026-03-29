import 'package:flutter/material.dart';
import 'package:responsive/Feautured/pageView/widgets/Movie_Row.dart';
import 'package:responsive/Feautured/pageView/widgets/data.dart';

class ScrollAnimation extends StatefulWidget {
  const ScrollAnimation({super.key});

  @override
  State<ScrollAnimation> createState() => _ScrollAnimationState();
}

class _ScrollAnimationState extends State<ScrollAnimation> {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
      double minScrollExtent2 = _scrollController2.position.minScrollExtent;
      double maxScrollExtent2 = _scrollController2.position.maxScrollExtent;
      double minScrollExtent3 = _scrollController3.position.minScrollExtent;
      double maxScrollExtent3 = _scrollController3.position.maxScrollExtent;

      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 25,
          _scrollController1);
      animateToMaxMin(maxScrollExtent2, minScrollExtent2, maxScrollExtent2, 10,
          _scrollController2);
      animateToMaxMin(maxScrollExtent3, minScrollExtent3, maxScrollExtent3, 15,
          _scrollController3);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29).withOpacity(.5),
      body: Container(
        child: Column(children: [
          MovieRow(
            images: movies1,
            scrollController: _scrollController1,
          ),
          MovieRow(
            images: movies2,
            scrollController: _scrollController2,
          ),
          MovieRow(
            images: movies3,
            scrollController: _scrollController3,
          ),
          SizedBox(
            height: 20,
          ),
// Text(
//             'some of our work',
//             style: TextStyle(
//               color:Colors.purple,
//               fontSize: 35,
//               shadows: [
//                 Shadow(
//                   blurRadius: 10.0,
//                   color: Colors.white.withOpacity(.8),
//                   offset: Offset(2.0, 2.0),
//                 ),
//               ],
//             ),
//           ),
        ]),
      ),
    );
  }
}

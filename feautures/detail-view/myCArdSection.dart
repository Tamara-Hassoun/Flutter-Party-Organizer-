import 'package:flutter/material.dart';
import 'package:responsive/Feautured/detail_view/widgets/detailView_body.dart';
import 'package:responsive/Feautured/detail_view/widgets/myCardPageView.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});
  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var width=    MediaQuery.sizeOf(context).width*5;
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height,
      child: Stack(
        children: [
          MyCardsPageView(
            pageController: pageController,
          ),
          const Positioned(top: 160, child: detailViewBody())
        ],
      ),
    );
  }
}

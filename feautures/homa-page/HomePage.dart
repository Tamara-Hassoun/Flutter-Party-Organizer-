import 'package:flutter/material.dart';
import 'package:responsive/Feautured/Home_page/widgets/RecentList.dart';
import 'package:responsive/Feautured/Home_page/widgets/TitleWithMoreBtn.dart';
import 'package:responsive/Feautured/Home_page/widgets/UpcomingList.dart';
import 'package:responsive/Feautured/Home_page/widgets/appBarr.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: MyAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final _scrollController = ScrollController();
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
            collapsedHeight: 120,
            stretchTriggerOffset: 250,
            expandedHeight: 340,
            pinned: true,
            flexibleSpace: MyAppBar(
              scrollController: _scrollController,
            )),
        SliverList(
            delegate: SliverChildListDelegate([
          TitleWithMoreBtn(title: "Recent Events", press: () {}),
          RecentEvents(),
          TitleWithMoreBtn(title: "UpComing Soon", press: () {}),
          UpcomingEvents(),
        ]))
      ],
    );
  }
}

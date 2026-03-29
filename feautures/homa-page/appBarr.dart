// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

List<BoxShadow> shadowList = [
  BoxShadow(
      color: Color.fromARGB(255, 113, 40, 96),
      blurRadius: 30,
      offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Dates', 'iconPath': 'lib/icons/blindDates locations.png'},
  {'name': 'Maridges', 'iconPath': 'lib/icons/maridge icon.png'},
  {'name': 'parties', 'iconPath': 'lib/icons/Music Party.png'},
  {'name': 'families', 'iconPath': 'lib/icons/resturants location.png'},
  {'name': 'W.W.C', 'iconPath': 'lib/icons/playes locations.png'}
];

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key, this.scrollController});
  final scrollController;

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  void onListen() {
    // print("scrollController: ${widget.scrollController.offset}");
    setState(() {});
  }

  @override
  void initState() {
    //_scrollController = widget.scrollController;
    widget.scrollController.addListener(onListen);

    super.initState();
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double percentage =
          ((constraints.maxHeight - kToolbarHeight) / (340.0 - kToolbarHeight))
              .clamp(0.0, 1.0);
      return AnimatedContainer(
        //margin: const EdgeInsets.only(top: 5),
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: _boxDecoration(),
        duration: Duration(milliseconds: 300),
        child: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              _topBar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _location(
                    offset: widget.scrollController.offset,
                    percentage: percentage,
                  ),
                  _searchBox(
                    percentage: percentage,
                    size: MediaQuery.of(context).size,
                  ),
                  _categoryBar(
                    offset: widget.scrollController.offset,
                    percentage: percentage,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}

BoxDecoration _boxDecoration() {
  return BoxDecoration(
    color:  Color.fromARGB(255, 113, 40, 96),
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
  );
}

Widget _topBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {}),
        CircleAvatar()
      ],
    ),
  );
}

Widget _location({percentage, offset}) {
  return Flexible(
    child: Visibility(
      visible: offset >= 80 ? false : true,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(percentage, percentage),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Location',
              style: TextStyle(color: Colors.white),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  Text(
                    'Ukraine',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _searchBox({percentage, size}) {
  return AnimatedContainer(
    width:
        percentage >= 0.5 ? size.width * (percentage - 0.2) : size.width * 0.4,
    duration: Duration(milliseconds: 300),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(Icons.search), Text(' '), Icon(Icons.settings)],
    ),
  );
}

Widget _categoryBar({offset, percentage}) {
  return Visibility(
    visible: offset >= 80 ? false : true,
    child: Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..scale(percentage, percentage, 1),
      child: Container(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      categories[index]['iconPath'],
                      height: 50,
                      width: 50,
                      //color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    categories[index]['name'],
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ),
  );
}

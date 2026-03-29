import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

List<Map> upcomingEvents = [
  {
    'image': 'lib/images/barbeque.jpg',
    'title': 'Barbeque Party the best Event of the Week',
    'country': 'Russia',
    'description': '440.440.440 has been added succfuly'
  },
  {
    'image': 'lib/images/maridge scene.jpeg',
    'title': 'Maridge Event the best Event of the Week',
    'country': 'Russia',
    'description': '440.440.440 has been added succfuly'
  },
  {
    'image': 'lib/images/party.jpeg',
    'title': ' Party the best Event of the Week',
    'country': 'Russia',
    'description': '440.440.440 has been added succfuly'
  },
  {
    'image': 'lib/images/Birthday parties.jpg',
    'title': ' Birthday Party the best Event of the Week',
    'country': 'Russia',
    'description': ' 440.440.440 has been added succfuly'
  }
];

class UpcomingEvents extends StatefulWidget {
  const UpcomingEvents({
    Key? key,
  }) : super(key: key);

  @override
  State<UpcomingEvents> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  final scrollController = ScrollController();
  void onListen() {
    // print("scrollController: ${scrollController.offset}");
    setState(() {});
  }

  @override
  void initState() {
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final itemSize = size.height * 0.3;
    return Container(
      height: 600,
      // width: 500,
      child: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          // SliverAppBar(
          //   automaticallyImplyLeading: false,
          //   title: Text(
          //     'My Characters',
          //     style: TextStyle(
          //       color: Colors.black,
          //     ), // Text
          //   ),
          //   pinned: true,
          //   backgroundColor: Colors.transparent,
          //   elevation: 0,
          // ), // sliverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final itemPositionOffset = index * itemSize;
              final difference = scrollController.offset - itemPositionOffset;
              final percent = 1 - (difference / itemSize);

              double opacity = percent;
              double scale = percent;

              if (opacity > 1.0) opacity = 1.0;
              if (opacity < 0.2) opacity = 0.0;
              if (percent > 1.0) scale = 1.0;

              return Align(
                heightFactor: 1,
                child: Opacity(
                  opacity: opacity,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..scale(scale, 1.0),
                    child: UpcomingEventCard(
                      image: upcomingEvents[index]['image'],
                      title: upcomingEvents[index]['title'],
                      country: upcomingEvents[index]['country'],
                      discription: upcomingEvents[index]['description'],
                      press: () {
                        // to detailes page
                      },
                    ),
                  ),
                ),
              ); // Card
            }, childCount: upcomingEvents.length), // SliverChitdBuitderDelegate
          ), // StiverList
        ], // <Widget>[l
      ),
      // ListView.builder(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   itemCount: upcomingEvents.length,
      //   itemBuilder: (BuildContext context, int index) {
      // return

      //   },
      // ),
    );
  }
}

class UpcomingEventCard extends StatelessWidget {
  const UpcomingEventCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.discription,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final String? discription;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(
          bottom: kDefaultPadding / 2,
        ),
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.9,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: kPrimaryColor.withOpacity(0.23),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            _upcomingImage(
              date: "JUN",
              image: image,
              size: size,
            ),
            _discription(
              description: "data",
              title: title,
            )
          ],
        ),
      ),
    );
  }

  Widget _upcomingImage({image, size, date}) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(7),
            bottomLeft: Radius.circular(7),
          ),
          child: Image.asset(
            image,
            height: 170,
            width: size.width * 0.9,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5.0,
            top: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _dateLabel(
                date: date,
              ),
              _saveButton(),
            ],
          ),
        )
      ],
    );
  }

  Widget _saveButton() {
    return Container(
      alignment: Alignment.center,
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_outlined,
            color: Colors.blue,
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _dateLabel({date}) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "10",
            textAlign: TextAlign.center,
            style:TextStyle(
                  height: 1.0,
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            
          ),
          Text(
            date,
            style:  TextStyle(
                height: 1.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              
            ),
          )
        ],
      ),
    );
  }

  Widget _discription({title, description}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(title,
              overflow: TextOverflow.ellipsis,
              style:  TextStyle(
                  height: 1.0,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                
              )),
          Row(),
          Text(
            description,
          )
        ],
      ),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final scrollController = ScrollController();

  final itemSize = 150.0;
  void onListen() {
    //print("scrollController: ${scrollController.offset}");
    setState(() {});
  }

  @override
  void initState() {
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shrink top List'),
      ), // AppBar
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'My Characters',
              style: TextStyle(
                color: Colors.black,
              ), // Text
            ),
            pinned: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ), // stiverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
//final character	= characters [index) ;

              final itemPositionOffset = index * itemSize;
              final difference = scrollController.offset - itemPositionOffset;
              final percent = 1 - (difference / itemSize);

              double opacity = percent;
              double scale = percent;

              if (opacity > 1.0) opacity = 1.0;
              if (opacity < 0.2) opacity = 0.0;
              if (percent > 1.0) scale = 1.0;
              print(percent);

              return Align(
                heightFactor: 1,
                child: Opacity(
                  opacity: opacity,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..scale(scale, 1.0),
                    child: Card(
                      color: Colors.blue,
                      child: SizedBox(
                        height: itemSize, //itemSize,
                        child: Row(children: [
                          Expanded(
                            child: Text(
                              "character. title",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ), // TextStyte
                            ), // Text
                          ), // Expanded
                          Image.asset("lib/images/logo.png"),
                        ]), // Row
                      ), // SizedBox
                    ),
                  ),
                ),
              ); // Card
            }, childCount: 24), // SliverChitdBuitderDelegate
          ), // StiverList
        ], // <Widget>[l
      ), // CustomScrottView
    ) // Scaffold

        ;
  }
}

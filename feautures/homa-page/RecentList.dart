import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

List<Map> recentEvents = [
  {
    'image': 'lib/images/barbeque.jpg',
    'title': 'Barbeque Party the best Event of the Week',
    'country': 'Russia',
    'diciption': '440.440.440 has been added succfuly'
  },
  {
    'image': 'lib/images/maridge scene.jpeg',
    'title': 'Maridge Event the best Event of the Week',
    'country': 'Russia',
    'diciption': '440.440.440 has been added succfuly'
  },
  {
    'image': 'lib/images/party.jpeg',
    'title': ' Party the best Event of the Week',
    'country': 'Russia',
    'discription': '440.440.440 has been added succfuly'
  },
  {
    'image': 'lib/images/Birthday parties.jpg',
    'title': ' Birthday Party the best Event of the Week',
    'country': 'Russia',
    'discription': ' 440.440.440 has been added succfuly'
  }
];

class RecentEvents extends StatelessWidget {
  const RecentEvents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: recentEvents.length,
        itemBuilder: (BuildContext context, int index) {
          return RecentEventCard(
            image: recentEvents[index]['image'],
            title: recentEvents[index]['title'],
            country: recentEvents[index]['country'],
            discription: recentEvents[index]['discription'],
            press: () {
              // to detailes page
            },
          );
        },
      ),
    );
  }
}

class RecentEventCard extends StatelessWidget {
  const RecentEventCard({
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
        width: size.width * 0.6,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: Colors.blue.withOpacity(0.23),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            _recentImage(
              date: "JUN",
              image: image,
              size: size,
            ),
            _discription(
              discription: "data",
              title: title,
            )
          ],
        ),
      ),
    );
  }

  Widget _recentImage({image, size, date}) {
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
            width: size.width * 0.6,
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
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.89),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _dateLabel({date}) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.89),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "10",
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 1.0,
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          Text(
            date,
            style: TextStyle(
              height: 1.0,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  Widget _discription({title, discription}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.0,
                fontSize: 28,
                fontWeight: FontWeight.w900,
              )),
          //Row(),
          Text(
            discription,
          )
        ],
      ),
    );
  }
}

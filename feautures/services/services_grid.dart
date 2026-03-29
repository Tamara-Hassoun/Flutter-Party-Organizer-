import 'package:flutter/material.dart';
import 'package:responsive/Feautured/Services/Widgets/services_item.dart';


List<Map> services=[
  {
    "name":"Places",
    "icon":"lib/assets/places.json"
  },
   {
    "name":"Music",
     "icon":"lib/assets/music.json"
  },
   {
    "name":"Cars",
     "icon":"lib/assets/places.json"
  },
   {
    "name":"Food",
     "icon":"lib/assets/food.json"
  },
   {
    "name":"Style",
     "icon":"lib/assets/style.json"
  },
   {
    "name":"Decoaration",
     "icon":"lib/assets/music.json"
  },
];


class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(child:Container (
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 70),
      child: GridView.builder( itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3,
          mainAxisSpacing: 40,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8
           )

          , itemBuilder:(context,index) {return ServicesItem(
            name:services[index]["name"],
            icon: services[index]["icon"],
          );})));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/creat_event/Widgets/image.dart';
import 'package:responsive/cubit/homePage/home_page_cubit.dart';



List<Map> categories = [
  {'name': 'Dates', 'iconPath': 'lib/icons/blindDates locations.png'},
  {'name': 'Maridges', 'iconPath': 'lib/icons/maridge icon.png'},
  {'name': 'parties', 'iconPath': 'lib/icons/Music Party.png'},
  {'name': 'families', 'iconPath': 'lib/icons/resturants location.png'},
  {'name': 'W.W.C', 'iconPath': 'lib/icons/playes locations.png'}
];

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
               itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 1),
                itemBuilder: (context, index) {
                  return Imagee(name: categories[index]['name'], icon: categories[index]['iconPath'], onTap: () {  },);
                }
    );
  }
}
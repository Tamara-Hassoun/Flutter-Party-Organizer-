
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:responsive/Feautured/creat_event/Screens/details_type.dart';
import 'package:responsive/Feautured/creat_event/Screens/placesScreen.dart';
import 'package:responsive/Feautured/creat_event/Widgets/image.dart';
import 'package:responsive/cubit/many_service/service_cubit.dart';
import 'package:responsive/models/many_service_new.dart';
import 'package:responsive/models/places_model.dart';


List<Map> services = [
  {"name": "Places", "icon":"lib/images/selectPlace.jpg" },
  {"name": "Music", "icon": "lib/images/selectMusic.jpg"},
  {"name": "Cars", "icon": "lib/images/selectCars.jpg"},
  {"name": "Food", "icon": "lib/images/selectFood.jpg"},
  {"name": "Style", "icon": "lib/images/selectStyle.jpg"},
  {"name": "Decoaration", "icon":"lib/images/selectDecoration.jpg"}
];



class GridServices extends StatelessWidget {
   GridServices({super.key});

  @override
  Widget build(BuildContext context) {



    List<String> caegoriesDecoration = context.read<ServiceCubit>().caegoriesDecoration;
    List<String> caegoriesSonger = context.read<ServiceCubit>().caegoriesSonger;
    List<String> caegoriesFood = context.read<ServiceCubit>().caegoriesFood;
    List<String> caegoriesCar = context.read<ServiceCubit>().caegoriesCar;
    List<String> caegoriesStyle = context.read<ServiceCubit>().caegoriesStyle;
    List<String> categoriesPlaces = context.read<ServiceCubit>().caegoriesPlaces;


      List<List<ChildrenService1>> listOfCategoriesCar =
        context.read<ServiceCubit>().listOfCategoriesCar;

    List<List<ChildrenService1>> listOfCategoriesFood =
        context.read<ServiceCubit>().listOfCategoriesFood;

    List<List<ChildrenService1>> listOfCategoriesStyle =
        context.read<ServiceCubit>().listOfCategoriesStyle;

    List<List<ChildrenService1>> listOfCategoriesDecoration =
        context.read<ServiceCubit>().listOfCategoriesDecoration;

    List<List<ChildrenService1>> listOfCategoriesSonger =
        context.read<ServiceCubit>().listOfCategoriesSonger;
        
    List<List<ChildrenPlaces>> listOfCategoriesPlaces =
        context.read<ServiceCubit>().listOfCategoriesPlaces;


  return   Container(
    padding: EdgeInsets.symmetric(horizontal: 33),
    child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Imagee(
                      onTap: ()async {
                        await context.read<ServiceCubit>().showPlaces();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PlacesScreen(
                            Categories: categoriesPlaces,
                            list: listOfCategoriesPlaces,
                            type: "place",
                            
                          );
                        }));
                      },
                      name: services[0]["name"],
                      icon: services[0]["icon"],
                    ),
                  ),
                  SizedBox(width: 70),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Imagee(
                      onTap: () async{
                        await context.read<ServiceCubit>().showSonger();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailsType(
                            Categories: caegoriesSonger,
                            list: listOfCategoriesSonger,
                            type: "music",
                            
                          );
                        }));
                      },
                      name: services[1]["name"],
                      icon: services[1]["icon"],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              fit: FlexFit.loose,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Imagee(
                      onTap: ()async {
                         await context.read<ServiceCubit>().ShowCar();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailsType(
                            Categories: caegoriesCar,
                            list: listOfCategoriesCar,
                            type: "car",
                            
                          );
                        }));
                      },
                      name: services[2]["name"],
                      icon: services[2]["icon"],
                    ),
                  ),
                  SizedBox(width: 70),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Imagee(
                      onTap: ()async {
                        await context.read<ServiceCubit>().ShowFood();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return  DetailsType(
                                Categories:caegoriesFood ,
                                list:listOfCategoriesFood ,
                                type: "food",
                                
                              );
                        }));
                      },
                      name: services[3]["name"],
                      icon: services[3]["icon"],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Flexible(
              fit: FlexFit.loose,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Imagee(
                      onTap: ()async {
                        await context.read<ServiceCubit>().ShowStyle();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailsType(
                            Categories: caegoriesStyle,
                            list: listOfCategoriesStyle,
                            type: "Style",
                            
                          );
                        }));
                      },
                      name: services[4]["name"],
                      icon: services[4]["icon"],
                    ),
                  ),
                  SizedBox(width: 70),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Imagee(
                      onTap: () async{
                        await context.read<ServiceCubit>().showDecoration();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailsType(
                            Categories: caegoriesDecoration,
                            list: listOfCategoriesDecoration,
                            type: "decoration",
                            
                          );
                        }));
                      },
                      name: services[5]["name"],
                      icon: services[5]["icon"],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
  );
  }
}
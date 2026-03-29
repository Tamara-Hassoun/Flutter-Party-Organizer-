import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/creat_event/Screens/detail_screen.dart';
import 'package:responsive/Feautured/creat_event/Widgets/catigory_list.dart';
import 'package:responsive/Feautured/creat_event/Widgets/playlist_card.dart';
import 'package:responsive/Feautured/creat_event/Widgets/service_card.dart';
import 'package:responsive/cubit/many_service/service_cubit.dart';
import 'package:responsive/models/many_service_new.dart';

class DetailsType extends StatefulWidget {
  final List<String> Categories;
  final List<List<ChildrenService1>> list;
  final String type;
  

  DetailsType(
      {Key? key,
      required this.Categories,
      required this.list,
      required this.type,
      });

  @override
  State<DetailsType> createState() => _DetailsTypeState(typee: type);
}

class _DetailsTypeState extends State<DetailsType> {
  int _selectedCategoryIndex = 0;
  final String typee;

  _DetailsTypeState({required this.typee});

  @override
  Widget build(BuildContext context) {
    List<ChildrenService1> list11 = widget.list[1];
    List<ChildrenService1> getFilteredChildrenList() {
      if (_selectedCategoryIndex == 0) {
        return list11;
      } else  {
        return widget.list[_selectedCategoryIndex + 1];
      }
    }

    

    return BlocConsumer<ServiceCubit, ServiceState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose your',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    typee,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 430,
                      color: Colors.transparent,
                      child: CategoryList(
                        categories: widget.Categories,
                        selectedCategoryIndex: _selectedCategoryIndex,
                        onCategorySelected: (p0) {
                          setState(() {
                            _selectedCategoryIndex = p0;
                          });
                        },
                      )),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(top: 40),
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: getFilteredChildrenList().length,
                          itemBuilder: (context, index) {
                            ChildrenService1 product =
                                getFilteredChildrenList()[index];
                            return GestureDetector(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                      product: product,
                                      type1:typee,
                                    ),
                                  ),
                                );
                              },child:PlaylistCard(imagePath: 'lib/images/barbeque.jpg' , title: getFilteredChildrenList()[index].categories!,) ,
                            );
                          },
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

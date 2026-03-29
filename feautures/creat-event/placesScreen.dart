import 'package:flutter/material.dart';
import 'package:responsive/Feautured/creat_event/Screens/detail_places_screen.dart';
import 'package:responsive/Feautured/creat_event/Screens/detail_screen.dart';
import 'package:responsive/Feautured/creat_event/Widgets/catigory_list.dart';
import 'package:responsive/Feautured/creat_event/Widgets/playlist_card.dart';
import 'package:responsive/Feautured/creat_event/Widgets/service_card.dart';
import 'package:responsive/models/many_service_new.dart';
import 'package:responsive/models/places_model.dart';  


class PlacesScreen extends StatefulWidget {
final  List<String>Categories;
final List<List<ChildrenPlaces>>list;

final String type ;

 PlacesScreen({Key? key, required this.Categories, required this.list, required this.type});



  @override
  State<PlacesScreen> createState() => _PlacesState(typee: type);
}

class _PlacesState extends State<PlacesScreen> {
  int _selectedCategoryIndex = 0;
  final String typee ;

  _PlacesState({required this.typee});

  @override
   Widget build(BuildContext context) {
    List<ChildrenPlaces>   list11=   widget.list[1];
    List<ChildrenPlaces> getFilteredChildrenList() {
  if (_selectedCategoryIndex == 0) {
    return list11  ; 
  } else {
    return   widget.list[_selectedCategoryIndex+1];
  }
}




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
              Text(typee
              ,
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
                child: CategoryList( categories:widget.Categories ,
                      selectedCategoryIndex: _selectedCategoryIndex,
                      onCategorySelected: (p0) {
                        setState(() {
                          _selectedCategoryIndex =p0  ;
                  
                        });
                      },)
              ),
              Expanded(child:  Container(
                padding:EdgeInsets.only(top: 35) ,
      
                child: ListView.builder(
      shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: getFilteredChildrenList().length,
        itemBuilder: (context, index) {
           ChildrenPlaces product =getFilteredChildrenList()[index];
           return GestureDetector(
            onTap: ()async{
             await  Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPlace(product: product,type2: typee,),
          ),
        );
            },
            child: PlaylistCard(imagePath: 'lib/images/barbeque.jpg' , title: getFilteredChildrenList()[index].name!,),
           );
        },
    
    )
              ),)
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';


class ItemsCart extends StatelessWidget {
  final String event;
  final String place;
  final String music;
  final String food;
  final String style;
  final String decoration;
  final String car;
  final String  date;
  final void Function()? onPressed1 ;
  

  const ItemsCart({super.key, required this.event, required this.place, required this.music, required this.style, required this.decoration, required this.car, required this.date, required this.food, this.onPressed1});
  
   
  
  @override
  Widget build(BuildContext context) {
    return 
          Card(
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child:Image.asset("lib/images/3.jpg",
                height: 90,
                fit: BoxFit.cover,)),
                Expanded(flex: 1,
                  child: Column(
                  children: [
                   Text(event,style: TextStyle(fontSize: 12),),
                   SizedBox(height: 3,),
                   Text(music,style: TextStyle(fontSize: 12),),
                   SizedBox(height: 3,),
                   Text(car,style: TextStyle(fontSize: 12),),
                   

                  ],
                  )),
                  Expanded(flex: 1,
                  child: Column(
                  children: [
                   Text(place,style: TextStyle(fontSize: 12),),
                   SizedBox(height: 3,),
                   Text(style,style: TextStyle(fontSize: 12),),
                   SizedBox(height: 3,),
                   Text(date,style: TextStyle(fontSize: 12),),

                  ],
                  )),
                  Expanded(flex: 1,
                  child: Column(
                  children: [
                   Text(food,style: TextStyle(fontSize: 12),),
                   SizedBox(height: 3,),
                   Text(music,style: TextStyle(fontSize: 12),),
                  ],
                  )),
                
                Expanded(flex: 1,
                  child: Column(children: [
                  Container(
                    height: 35,
                    child: IconButton( onPressed: (){
                    
                      
                    },icon: Icon(Icons.refresh_sharp,color:  Color.fromARGB(255, 145, 25, 143)),),
                  ),
                
                  Container(
                    height: 35,
                    child: IconButton( onPressed:onPressed1,
                    icon: Icon(Icons.delete,color: Color.fromARGB(255, 145, 25, 143),),),
                  ),
                ],))
            ],
          ),
        ),
      )
    ;
  }
}
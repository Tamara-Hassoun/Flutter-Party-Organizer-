
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/creat_event/CustomRectTween%20.dart';
import 'package:responsive/Feautured/creat_event/Widgets/playlist_card.dart';
import 'package:responsive/cubit/creat/creat_cubit.dart';
import 'package:responsive/models/many_service_new.dart';


class DetailScreen extends StatefulWidget {
final ChildrenService1 product;
final String type1;
  

  DetailScreen({required this.product, required this.type1}
  
  );

  @override
  State<DetailScreen> createState() => _DetailScreenState(typee1: type1);
}

class _DetailScreenState extends State<DetailScreen> {
  final String typee1;

  _DetailScreenState({required this.typee1});
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Stack(
                  children: [
                  Hero(
                      tag: 'lib/images/barbeque.jpg',
                transitionOnUserGestures: true,
               createRectTween: (begin, end) {
    return CustomRectTween(begin: begin, end: end);
  },
                    child: Image.asset(
                          'lib/images/barbeque.jpg',
                          height: 400,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                  ),
                    
                    Positioned(
                      top: 16,
                      left: 16,
                      child: GestureDetector(
                        child: Icon(Icons.arrow_back, color: Colors.white),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    
                  ],
                ),
              
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.categories!,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                     widget.product.categories!, 
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Row(
                            children: [
                              Text(widget.product.price.toString()),
                              Text("\$")
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Text('buy now',style: TextStyle(color: Colors.amber),),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child:
                    Text(
                      widget.product.description,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                child: Row(children: [Text("to select this press here "),
              SizedBox(width: 30,),
              GestureDetector(onTap: ()async{
               await context.read<createCubit>().select(typee1, widget.product.id!);
              }, child: Icon(Icons.add_box,color: Colors.green,))
              ]),)
            ],
          ),
        ),
      ),
    );
  }
}

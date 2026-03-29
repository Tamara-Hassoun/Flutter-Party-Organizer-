import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/core/Api/Api_consumer.dart';
import 'package:responsive/core/Api/End_points.dart';
import 'package:responsive/core/errors/exceptions.dart';
import 'package:responsive/cubit/creat/creat_state.dart';

class createCubit extends Cubit<createState> {
   createCubit(this.apiConsumer) : super(CreatInitial());
  final ApiConsumer apiConsumer ;
GlobalKey<FormState>createFormKey=GlobalKey();

 int event_id=0;
 int place_id=0;
 int decoration_id=0;
 int food_id=0;
 int drees_and_makeup_id=0;
 int car_id=0;
 int songer_id=0;
 DateTime? date ;
 int status=0;
 int photography=0;


select (String typee,int id)async{
if(typee == "place"){place_id = id;}
else if(typee == "food"){food_id=id;}
else if(typee == "music"){songer_id=id;}
else if(typee == "style"){drees_and_makeup_id=id;}
else if(typee == "decoration"){decoration_id=id;}
else if(typee == "car"){car_id=id;}
}

select_date(DateTime dateTime)async{
 DateTime date =dateTime;

}

select_type(String type)async{
  if(type == 'puplic'){status = 0;}
else if(type == 'private'){status=1;}
}

select_camira(String name)async{
  if(name == 'without photography'){photography = 0;}
else if(name == 'with photography'){photography=1;}
}

select_category(int categories_id){
  event_id =categories_id;
}


Creat()async{
  try{
    emit(CreateLoading());
  final response=await apiConsumer.post(
EndPoint.create,
data: {
  ApiKey.date:date,
  ApiKey.type:status,
  ApiKey.car:car_id,
  ApiKey.category:event_id,
  ApiKey.food:food_id,
  ApiKey.place:place_id,
  ApiKey.decoration:decoration_id,
  ApiKey.style:drees_and_makeup_id,
  ApiKey.car:car_id,
  ApiKey.photography:photography,
},
  );
  
    emit(CreateSucces());
    print(response);
  }on ServerException catch(e){
    emit(CreateFalure(Message: e.errorModel.message));
    print(e.toString());
  }
}
}

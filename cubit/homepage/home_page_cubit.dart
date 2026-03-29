import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:responsive/core/Api/Api_consumer.dart';
import 'package:responsive/core/Api/End_points.dart';
import 'package:responsive/core/errors/exceptions.dart';
import 'package:responsive/models/Comment.dart';
import 'package:responsive/models/RecentEvent.dart';
import 'package:responsive/models/addComment.dart';
import 'package:responsive/models/bookTicket.dart';
import 'package:responsive/models/category_model.dart';
import 'package:responsive/models/lastEvent.dart';
import 'package:responsive/models/lastEventdetails.dart';

part 'home_page_state.dart';
class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this.apiConsumer) : super(HomePageInitial());
 final   ApiConsumer apiConsumer ;
 categoryModel? category ;
 List<String>categoriesNames=[] ;
 List<String>Images =[];
 List <RecentData>recentData=[];
 RecentEvent?recentEvent ; 
 BookTicket?bookTicket ;
   TextEditingController numberOfTickets=TextEditingController();
lastEvent?last ;
   List<lastEvent>lastEventList =[] ;
   lastEventDetails?lastdetails ;
   Comment?comment; 
   TextEditingController CommentController=TextEditingController();
      TextEditingController UpdateController=TextEditingController();
TextEditingController CommentRecentController=TextEditingController();
      TextEditingController UpdateRecentController=TextEditingController();
   
   AddComment? addComments;
 getCategories() async {
 try {  emit(HomePageLoading());
    final response = await apiConsumer.get(
EndPoint.category 
    );
    category=categoryModel.fromJson(response);
    List<Data>categoriesAndHisData=category!.data!;
    for(int i=0;i<categoriesAndHisData.length;i++){
      categoriesNames.add(categoriesAndHisData[i].name!);
  Images.add( categoriesAndHisData[i].image!);
    }
    emit(HomePageSuccess(
   recentData: recentData,
   lastEventList: lastEventList
    ));}
    on ServerException catch(e){
      emit(HomePageFailure());
    }
  }
   getRecentEvent() async {
 try {  emit(HomePageLoading());
    final response = await apiConsumer.get(
EndPoint.recent 
    );
    recentEvent=RecentEvent.fromJson(response);
    List<RecentData>categoriesAndHisData=recentEvent!.data!;
    for(int i=0;i<categoriesAndHisData.length;i++){
      recentData.add(categoriesAndHisData[i]);
    }
    emit(HomePageSuccess(
    recentData: recentData,
   lastEventList: lastEventList
    ));}
    on ServerException catch(e){
      emit(HomePageFailure());
    }
  }
   getlast() async {
 try {  emit(HomePageLoading());
    final   response = await apiConsumer.get(
EndPoint.last ,
    );
  for(int i=0;i<response.length; i++ )
{
lastEventList.add(
  lastEvent.fromJson(response[i],  
  )
);
} 
print("list:${lastEventList}");
    emit(HomePageSuccess(
    recentData: recentData,
   lastEventList: lastEventList
    ));}
    on ServerException catch(e){
      emit(HomePageFailure());
    }
  }
   getlastDetails(int id) async {
 try {  emit(lastDetailsLoading());
    final   response = await apiConsumer.post(
EndPoint.lastdetails ,
data: {
  "id":id
}
    );
  lastdetails=lastEventDetails.fromJson(response)  ;
print("list:${lastEventList}");
    emit(lastDetailsSuccess(
   lastdetails: lastdetails!
    ));}
    on ServerException catch(e){
      emit(lastDetailsFailure());
    }
  }
  bookTickets(int id )async{
  try{
    emit(ticketLoading());
  final response=await apiConsumer.post(
EndPoint.bookTicket,
data: {
"event_id":id,
"number_of_tickets":numberOfTickets.text
},
  );
  
 bookTicket  =BookTicket.fromJson(response);
      numberOfTickets.clear();

    emit(ticketSuccess(message: bookTicket!.message!));
  }on ServerException catch(e){
    emit(ticketFailure(message: e.errorModel.message));
    print(e.toString());
  }
}
getAllComments(int ids) async {
 try {  
  emit(CommentsLoading());
    final response = await apiConsumer.post(
EndPoint.getCommentsByLast,
data: {
  "id" :ids
}
    );
 comment=Comment.fromJson(response);
 List<Post>   list =comment!.posts!;
   emit(CommentsSuccess(list: list));
   
   }
    on ServerException catch(e){
      emit(CommentsFailure(message: e.errorModel.message));
    }
  }

 addComment (int id)async{
  try{
    emit(addCommentsLoading());
  final response=await apiConsumer.post(
EndPoint.AddCommentsLast,
data: {
  "user_event_id":id,
  "comment":CommentController.text
},

  );
addComments=AddComment.fromJson(response);

  String message =addComments!.message!;
    emit(addCommentsSucces(message: message));

  // final decodeToken=JwtDecoder.decode(user!.token);
 
  // CacheHelper().saveData(key:ApiKey.id ,value:decodeToken[ApiKey.id]);
  }on ServerException catch(e){
    emit(addCommentsFaiulure(message: e.errorModel.message));
   }
}
 
 
 UpdateComment (int id)async{
  try{
          emit(UpdateCommentsLoading());


  final response=await apiConsumer.post(
EndPoint.updateCommentlast,
data: {
  "id":id,
  "comment":UpdateRecentController.text
},
// Comment updated successfully

  );
          emit(UpdateCommentsSucces(message: "Comment updated successfully"));
  }on ServerException catch(e){
emit(UpdateCommentsFaiulure(message: e.errorModel.message))   ;}
}
 DeleteComment (int PostId)async{
  try{
          emit(DeleteCommentsLoading());
    

  final response=await apiConsumer.post(
EndPoint.deleteCommentlast,
data: {
  "id":PostId,
},

  );
emit(DeleteCommentsSucces(message: "Comment deleted successfully"));

 
  }on ServerException catch(e){
emit(DeleteCommentsFaiulure(message: e.errorModel.message))   ;}
}



getAllCommentsRecent(int ids) async {
 try {  
  emit(CommentsRecentLoading());
    final response = await apiConsumer.post(
EndPoint.getCommentsByRecent,
data: {
  "id" :ids
}
    );
 comment=Comment.fromJson(response);
 List<Post>   list =comment!.posts!;
   emit(CommentsRecentSuccess(list: list));
   
   }
    on ServerException catch(e){
      emit(CommentsRecentFailure(message: e.errorModel.message));
    }
  }

 addCommentRecent (int id)async{
  try{
    emit(addCommentsRecentLoading());
  final response=await apiConsumer.post(
EndPoint.AddCommentsRecent,
data: {
  "event_comming_id":id,
  "comment":CommentRecentController.text
},

  );
addComments=AddComment.fromJson(response);

  String message =addComments!.message!;
    emit(addCommentsRecentSucces(message: message));

  // final decodeToken=JwtDecoder.decode(user!.token);
 
  // CacheHelper().saveData(key:ApiKey.id ,value:decodeToken[ApiKey.id]);
  }on ServerException catch(e){
    emit(addCommentsRecentFaiulure(message: e.errorModel.message));
   }
}
 
 
 UpdateCommentRecent (int id)async{
  try{
          emit(UpdateCommentsRecentLoading());


  final response=await apiConsumer.post(
EndPoint.updateCommentRecent,
data: {
  "id":id,
  "comment":UpdateRecentController.text
},
// Comment updated successfully

  );
          emit(UpdateCommentsRecentSucces(message: "Comment updated successfully"));
  }on ServerException catch(e){
emit(UpdateCommentsRecentFaiulure(message: e.errorModel.message))   ;}
}
 DeleteCommentRecent (int PostId)async{
  try{
          emit(DeleteCommentsRecentLoading());
    

  final response=await apiConsumer.post(
EndPoint.deleteCommentRecent,
data: {
  "id":PostId,
},

  );
emit(DeleteCommentsRecentSucces(message: "Comment deleted successfully"));

 
  }on ServerException catch(e){
emit(DeleteCommentsRecentFaiulure(message: e.errorModel.message))   ;}
}







  @override
  Future<void> close() {
    // numberOfTickets.dispose();
    // emit(ticketLoading());
    return super.close();
  }
}


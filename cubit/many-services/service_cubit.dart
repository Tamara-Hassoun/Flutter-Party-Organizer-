
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:responsive/core/Api/Api_consumer.dart';
import 'package:responsive/core/Api/End_points.dart';
import 'package:responsive/core/errors/exceptions.dart';
import 'package:responsive/models/many_service_modle.dart';
import 'package:responsive/models/many_service_new.dart';
import 'package:responsive/models/places_model.dart';

part 'service_state.dart';

class ServiceCubit extends Cubit<ServiceState> {
  ServiceCubit(this.apiConsumer) : super(ServiceInitial());
  final ApiConsumer apiConsumer ;

  manyServiceNew? Food;
  
    manyServiceNew? car ;
    manyServiceNew? Style;
   var searchResult =[];
    manyServiceNew?decorationModel;
        manyServiceNew?SongerModel;
placesNewModel? place ;

    
    List<List<ChildrenService1>>listOfCategoriesFood=[[]] ;
    List<String>caegoriesFood=[];
        List<String>ImagesFood=[];

 List<List<ChildrenService1>>listOfCategoriesCar=[[]];
    List<String>caegoriesCar=[];
            List<String>ImagesCar=[];

     List<List<ChildrenService1>>listOfCategoriesStyle=[[]] ;
    List<String>caegoriesStyle=[];
            List<String>ImagesStyle=[];

     List<List<ChildrenService1>>listOfCategoriesDecoration=[[]] ;
    List<String>caegoriesDecoration=[];
            List<String>ImagesDecoration=[];

     List<List<ChildrenService1>>listOfCategoriesSonger=[[]] ;
    List<String>caegoriesSonger=[];
            List<String>ImagesSonger=[];

     List<List<ChildrenPlaces>>listOfCategoriesPlaces=[[]] ;
    List<String>caegoriesPlaces=[];
            List<List<Images>>ImagesPlaces=[[]];

   ShowFood() async {
 try {  emit(ServiceLoading());
    final response = await apiConsumer.get(
EndPoint.showFood 
    );
    Food=manyServiceNew.fromJson(response);
    List<DataService>categoriesAndHisData=Food!.data!;

    for(int i=0;i<categoriesAndHisData.length;i++){
      caegoriesFood.add(categoriesAndHisData[i].categories!);
  listOfCategoriesFood.add( categoriesAndHisData[i].children!);
    }

    emit(ServiceSucces(
      categories: caegoriesFood,
      list: listOfCategoriesFood
    ));}
    on ServerException catch(e){
      emit(ServiceFailure());
    }
  }




     ShowCar() async {
 try {  emit(ServiceLoading());
    final response = await apiConsumer.get(
EndPoint.showCar 
    );
    car=manyServiceNew.fromJson(response);
    List<DataService>categoriesAndHisData=car!.data!;
   

    for(int i=0;i<categoriesAndHisData.length;i++){
      caegoriesCar.add(categoriesAndHisData[i].categories!);
  listOfCategoriesCar.add( categoriesAndHisData[i].children!);
  ImagesCar.add(categoriesAndHisData[i].image!);
    }
      

    emit(ServiceSucces(
      categories: caegoriesCar,
      list: listOfCategoriesCar
    ));}
    on ServerException catch(e){
      emit(ServiceFailure());
    }
  }

    ShowStyle() async {
 try {  emit(ServiceLoading());
    final response = await apiConsumer.get(
EndPoint.showDress_and_makeups 
    );
    Style=manyServiceNew.fromJson(response);
    List<DataService>categoriesAndHisData=Style!.data!;
   

    for(int i=0;i<categoriesAndHisData.length;i++){
      caegoriesStyle.add(categoriesAndHisData[i].categories!);
  listOfCategoriesStyle.add( categoriesAndHisData[i].children!);
    ImagesStyle.add(categoriesAndHisData[i].image!);

    }
   

    emit(ServiceSucces(
      categories: caegoriesStyle,
      list: listOfCategoriesStyle
    ));}
    on ServerException catch(e){
      emit(ServiceFailure());
    }
  }
showDecoration () async{
 try {
  emit(ServiceLoading());
  final response = await apiConsumer.get(
  EndPoint.showDecorations 
     );
  decorationModel=manyServiceNew.fromJson(response);
  List<DataService>categoriesAndHisData=decorationModel!.data!;
    

    for(int i=0;i<categoriesAndHisData.length;i++){
      caegoriesDecoration.add(categoriesAndHisData[i].categories!);
  listOfCategoriesDecoration.add( categoriesAndHisData[i].children!);
    ImagesDecoration.add(categoriesAndHisData[i].image!);

    }
   
    
    emit(ServiceSucces(
    list: listOfCategoriesDecoration,
    categories: caegoriesDecoration
    ));

} on ServerException catch (e) {
emit(Decorationfailure());}


}



showSonger () async{
 try {
  emit(ServiceLoading());
  final response = await apiConsumer.get(
  EndPoint.showSonger 
     );
  SongerModel=manyServiceNew.fromJson(response);
  List<DataService>categoriesAndHisData=SongerModel!.data!;
    

    for(int i=0;i<categoriesAndHisData.length;i++){
      caegoriesSonger.add(categoriesAndHisData[i].categories!);
  listOfCategoriesSonger.add( categoriesAndHisData[i].children!);
      ImagesSonger.add(categoriesAndHisData[i].image!);

    }
   
    
    emit(ServiceSucces(

      list:listOfCategoriesSonger,
      categories: caegoriesSonger
    ));

} on ServerException catch (e) {
emit(Decorationfailure());}
}
showPlaces () async{
 try {
  emit(PlacesLoading());
  final response = await apiConsumer.get(
  EndPoint.showPlaces 
     );
  place=placesNewModel.fromJson(response);
  List<DataPlaces>categoriesAndHisData=place!.data!;
    

    for(int i=0;i<categoriesAndHisData.length;i++){
      caegoriesPlaces.add(categoriesAndHisData[i].categories!);
  listOfCategoriesPlaces.add( categoriesAndHisData[i].children!);
      // ImagesPlaces.add(categoriesAndHisData[i].images!);

    }
   
    
    emit(PlacesSuccess(
      list: listOfCategoriesPlaces,
      categories: caegoriesPlaces
    ));

} on ServerException catch (e) {
emit(Placesfailure());}


}





}
  
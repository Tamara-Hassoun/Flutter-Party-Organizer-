part of 'service_cubit.dart';

sealed class ServiceState extends Equatable {
 const ServiceState();

  @override
  List<Object> get props => [];
}

final class ServiceInitial extends ServiceState {}
final class FoodSuccess extends ServiceState {
   final List<String>categories;
   final List<dynamic>list;
   

  FoodSuccess({required this.categories, required this.list});

}
final class FoodLoading extends ServiceState {}
final class Foodfailure extends ServiceState {}
final class PlacesSuccess extends ServiceState {
   final List<String>categories;
   final  List<List<ChildrenPlaces>>list;


  PlacesSuccess({required this.categories, required this.list});

}
final class PlacesLoading extends ServiceState {}
final class Placesfailure extends ServiceState {}

final class StyleSuccess extends ServiceState {
   final List<String>categories;
   final List<List<ChildrenService1>>list;

  StyleSuccess({required this.categories, required this.list});

}
final class StyleLoading extends ServiceState {}
final class Stylefailure extends ServiceState {}
final class DecorationSuccess extends ServiceState {

  DecorationSuccess();

}
final class DecorationLoading extends ServiceState {}
final class Decorationfailure extends ServiceState {}
final class SearchSuccess extends ServiceState {
  final   List<dynamic>searchResult;

  SearchSuccess({required this.searchResult});
}
final class SearchLoading extends ServiceState {}
final class Searchfailure extends ServiceState {}


final class ServiceSucces extends ServiceState {
final List<List<ChildrenService1>>list ;
final  List<String> categories ; 

  ServiceSucces({required this.list, required this.categories});

}
final class ServiceLoading extends ServiceState {}
final class ServiceFailure extends ServiceState {}

final class SendRatingSuccess extends ServiceState {
  final String message ;

  SendRatingSuccess({required this.message});
}
final class SendRatingLoading extends ServiceState {}
final class SendRatingFailure extends ServiceState {
  final String message ;

  SendRatingFailure({required this.message});}
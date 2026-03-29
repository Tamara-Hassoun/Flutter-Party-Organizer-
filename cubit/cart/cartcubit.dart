import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/core/Api/Dio_consumer.dart';
import 'package:responsive/core/Api/End_points.dart';
import 'package:responsive/cubit/cart/cartService.dart';
import 'package:responsive/cubit/cart/cartState.dart';
import 'package:responsive/models/cart_model.dart';


class CartCubit extends Cubit<CartState> {
  final DioConsumer apiConsumer;

  CartCubit(this.apiConsumer) : super(CartInitial());

Future<List<Datum>> getMyCart() async {
    final response = await apiConsumer.get(EndPoint.getcart);
    return CartModel.fromJson(response).data;
  }

  
  Future<Datum> updateUserEvent(int eventId, Map<String, dynamic> updates) async {
    final response = await apiConsumer.post('${EndPoint.updateEvent}/$eventId', data: updates);
    return Datum.fromJson(response['updated_event']);
  }

  
  Future<void> deleteEventFromCart(int eventId) async {
    await apiConsumer.delete('${EndPoint.deletFromCart}/$eventId');
  }





  void getMyCart1() async {
    try {
      emit(CartLoading());
      final cartItems = await getMyCart();
      emit(CartSucces(cartItems));
    } catch (error) {
      emit(CartError('Failed to load cart: ${error.toString()}'));
    }
  }

  void updateUserEvent1(int eventId, Map<String, dynamic> updates) async {
    try {
      emit(CartLoading());
      final updatedEvent = await updateUserEvent(eventId, updates);
      emit(EventUpdatedSuccessfully(updatedEvent));
    } catch (error) {
      emit(CartError('Failed to update event: ${error.toString()}'));
    }
  }

  void deleteEventFromCart1(int eventId) async {
    try {
      emit(CartLoading());
      await deleteEventFromCart(eventId);
       getMyCart(); 
    } catch (error) {
      emit(CartError('Failed to delete event: ${error.toString()}'));
    }
  }
}

import 'package:dio/dio.dart';
import 'package:responsive/core/Api/Dio_consumer.dart';
import 'package:responsive/core/Api/End_points.dart';
import 'package:responsive/models/cart_model.dart';


class CartService {
  final DioConsumer apiConsumer;

  CartService(this.apiConsumer);

  
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
}

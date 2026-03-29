import 'package:equatable/equatable.dart';
import 'package:responsive/models/cart_model.dart';


abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object?> get props => [];
}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartSucces extends CartState {
  final List<Datum> cartItems;

  const CartSucces(this.cartItems);

  @override
  List<Object?> get props => [cartItems];
}

class CartError extends CartState {
  final String message;

  const CartError(this.message);

  @override
  List<Object?> get props => [message];
}

class EventUpdatedSuccessfully extends CartState {
  final Datum updatedEvent;

  const EventUpdatedSuccessfully(this.updatedEvent);

  @override
  List<Object?> get props => [updatedEvent];
}

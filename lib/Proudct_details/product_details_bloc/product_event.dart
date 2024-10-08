part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}
final class AddToCartEvent extends ProductEvent {
  final int itemId;
  final int orderId;
  final int quantity;
  final double price;

  AddToCartEvent({
    required this.itemId,
    required this.orderId,
    required this.quantity,
    required this.price,
  });
}

final class ChangeQuantityEvent extends ProductEvent {
  final int quantity;

  ChangeQuantityEvent(this.quantity);
}

final class ChangeSizeEvent extends ProductEvent {
  final String selectedSize;
  ChangeSizeEvent(this.selectedSize);
}

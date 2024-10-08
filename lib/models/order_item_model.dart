class OrderItemModel {
  final int itemId;
  final int orderId;
  int quantity;
  final double price;
  String status;

  OrderItemModel({
    required this.itemId,
    required this.orderId,
    required this.quantity,
    required this.price,
    this.status = 'incomplete'
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    return OrderItemModel(
      itemId: json['item_id'],
      orderId: json['order_id'],
      quantity: json['quantity'],
      price: json['price'],
      status: json['item_status'] ?? 'incomplete'
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item_id': itemId,
      'order_id': orderId,
      'quantity': quantity,
      'price': price,
      'item_status':status
    };
  }
}

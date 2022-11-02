import 'package:green_market/src/models/product_model.dart';

class CartProductModel {
  ProductModel product;
  int quantity;

  CartProductModel({
    required this.product,
    required this.quantity,
  });

  totalPrice() {
    return product.price * quantity;
  }
}

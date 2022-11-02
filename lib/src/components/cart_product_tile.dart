import 'package:flutter/material.dart';
import 'package:green_market/src/components/unity_counter.dart';
import 'package:green_market/src/models/cart_product_model.dart';
import 'package:green_market/src/utils/utils.dart';

class CartProductTile extends StatefulWidget {
  final CartProductModel cartProduct;
  final Function(CartProductModel) remove;

  const CartProductTile({
    super.key,
    required this.cartProduct,
    required this.remove,
  });

  @override
  State<CartProductTile> createState() => _CartProductTileState();
}

class _CartProductTileState extends State<CartProductTile> {
  final Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        leading: Image.asset(
          widget.cartProduct.product.imgUrl,
          height: 60,
          width: 60,
        ),
        title: Text(
          widget.cartProduct.product.productName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: UnityCounter(
          value: widget.cartProduct.quantity,
          suffixText: widget.cartProduct.product.unit,
          result: (quantity) {
            setState(() {
              widget.cartProduct.quantity = quantity;
            });
            if (quantity == 0) {
              widget.remove(widget.cartProduct);
            }
          },
          isRemovable: true,
        ),
        subtitle: Text(
          utils.priceToCurrency(widget.cartProduct.totalPrice()),
        ),
      ),
    );
  }
}

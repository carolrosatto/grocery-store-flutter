import 'package:flutter/material.dart';
import 'package:green_market/src/config/custom_colors.dart';
import 'package:green_market/src/models/product.dart';
import 'package:green_market/src/utils/utils.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  ProductTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 1,
          shadowColor: Colors.grey.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(product.imgUrl),
                ),
                Text(
                  product.productName,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      utils.priceToCurrency(product.price),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: CustomColors.customSwatchColor,
                      ),
                    ),
                    Text(
                      '/${product.unit}',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 4.0,
          right: 4.0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: CustomColors.customSwatchColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    topRight: Radius.circular(20.0),
                  )),
              height: 40.0,
              width: 35.0,
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}

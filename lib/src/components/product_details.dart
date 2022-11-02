import 'package:flutter/material.dart';
import 'package:green_market/src/components/unity_counter.dart';
import 'package:green_market/src/config/custom_colors.dart';
import 'package:green_market/src/models/product_model.dart';
import 'package:green_market/src/utils/utils.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel product;

  ProductDetails({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final Utils utils = Utils();

  int cartItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: SafeArea(
        child: Stack(
          children: [
            Column(children: [
              Expanded(
                //Efeito de "ampliar" quando abre o item - animação
                child: Hero(
                  tag: widget.product.imgUrl,
                  child: Image.asset(widget.product.imgUrl),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.product.productName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            ),
                          ),
                          UnityCounter(
                            suffixText: widget.product.unit,
                            value: cartItemQuantity,
                            result: (int quantity) {
                              setState(() {
                                cartItemQuantity = quantity;
                              });
                            },
                          ),
                        ],
                      ),
                      Text(
                        utils.priceToCurrency(widget.product.price),
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SingleChildScrollView(
                            child: Text(
                              widget.product.description,
                              style: const TextStyle(height: 1.5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          label: const Text(
                            "Adicionar ao carrinho",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
            Positioned(
              left: 8,
              top: 8,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
              ),
            )
          ],
        ),
      ),
    );
  }
}

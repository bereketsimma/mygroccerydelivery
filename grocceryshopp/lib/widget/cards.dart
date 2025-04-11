import 'package:flutter/material.dart';
import 'package:grocceryshopp/screen/models/grocerydatamodel.dart';

class Cards extends StatelessWidget {
  final Product product;
  const Cards({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            // Heart Icon
            Positioned(
              top: 8,
              right: 8,
              child: Icon(Icons.favorite_border, color: Colors.grey),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Image.network(
                      product.thumbnail, 
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white.withOpacity(0.2),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "\$${product.price.toStringAsFixed(2)}", 
                          style: TextStyle(color: Colors.greenAccent),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:chairshopapp/constants.dart';
import 'package:chairshopapp/models/product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          product.imageList[0],
          width: 200,
        ),
        Text(
          product.title,
          style: TextStyle(fontFamily: kFontFamily, fontSize: 20),
        ),
        Text(
          '\$${product.price.toString()}',
          style: TextStyle(fontFamily: kFontFamily, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: kTextLightColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: kTextColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        )
      ],
    );
  }
}

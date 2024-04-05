import 'package:chairshopapp/constants.dart';
import 'package:chairshopapp/models/product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final double? width;
  final VoidCallback onPressed;
  
  const ItemCard({super.key, required this.product, this.width, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            product.imageList[0],
            width: width,
          ),
          Text(
            product.title,
            style: const TextStyle(
                fontFamily: kFontFamily,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Text(
            '\$${product.price.toString()}',
            style: const TextStyle(fontFamily: kFontFamily, fontSize: 16),
          ),
          const SizedBox(
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
              const SizedBox(
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
      ),
    );
  }
}

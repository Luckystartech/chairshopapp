import 'package:chairshopapp/constants.dart';
import 'package:chairshopapp/models/product.dart';
import 'package:chairshopapp/screens/details/product_details.dart';
import 'package:chairshopapp/screens/home/components/categories.dart';
import 'package:chairshopapp/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            iconSize: 28,
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
              onPressed: () {},
              iconSize: 32,
              icon: const Icon(Icons.person_2_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Discover products',
                  style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
                SvgPicture.asset(
                  'assets/icons/filter.svg',
                  width: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Categories(),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding * 2.5,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: ((context, index) {
                return ItemCard(
                  width: 150,
                  product: products[index],
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDetails(product: products[index],)));
                  },
                );
              }),
            ))
          ],
        ),
      ),
    );
  }
}

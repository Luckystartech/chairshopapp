import 'package:chairshopapp/constants.dart';
import 'package:chairshopapp/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // List<String> imageUrl = [
  //   'assets/images/chair_1.jpg',
  //   'assets/images/chair_2.jpg'
  // ];

  int selectedIndex = 0;

  void changeImage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Icon(
              Icons.favorite_border_outlined,
              size: 26,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                // Image.asset('assets/images/chair_1.jpg'),
                Image.asset(widget.product.imageList[selectedIndex]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.product.imageList
                        .asMap()
                        .entries
                        .map((entry) => GestureDetector(
                              onTap: () {
                                changeImage(entry.key);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: selectedIndex == entry.key ? 8 : 0,
                                    color: selectedIndex == entry.key
                                        ? Colors.black12
                                        : Colors.transparent,
                                  ),
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(entry.value,
                                        width: 80, height: 80)),
                              ),
                            ))
                        .toList()),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.red[400],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.product.rating.toString(),
                      style: const TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      decoration: BoxDecoration(
                          color: kTextbgColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '${widget.product.reviews.toString()} reviews',
                        style: const TextStyle(
                            fontFamily: kFontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      widget.product.title.toString(),
                      style: const TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  widget.product.description.toString(),
                  style: const TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                        color: kTextLightColor,
                        blurRadius: 10,
                        offset: Offset(0, 1))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$64.00',
                    style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 16),
                    decoration: BoxDecoration(
                        color: kTextColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kBackgroundColor),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

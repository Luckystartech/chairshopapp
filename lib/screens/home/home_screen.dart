import 'package:chairshopapp/constants.dart';
import 'package:chairshopapp/models/product.dart';
import 'package:chairshopapp/screens/home/components/item_card.dart';
import 'package:chairshopapp/screens/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/chair_bg.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: kDefaultPadding * 8,
                // right: kDefaultPadding * 2,
                // left: kDefaultPadding * 2
              ),
              child: Column(
                children: [
                  //  Centered Text
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Renovate Your Interior',
                      style: TextStyle(
                        color: kBackgroundColor,
                        fontFamily: kFontFamily,
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Centered button
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Go to catalog',
                        style: TextStyle(
                            color: kTextColor,
                            fontFamily: kFontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  // Botton Container
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding),
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Popular products',
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Catalog()));
                                },
                                child: const Text(
                                  'View all',
                                  style: TextStyle(
                                    fontFamily: kFontFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: product.length,
                                itemBuilder: (context, index) {
                                  return ItemCard(
                                    product: product[index],
                                  );
                                }),
                          ),
                        ],
                      ),
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

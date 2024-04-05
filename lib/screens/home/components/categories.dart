import 'package:chairshopapp/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Sofas', 'Chairs', 'Tables', 'Kitchen'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: _selectedIndex == index ? kTextColor : kTextbgColor,
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: _selectedIndex == index ? kBackgroundColor : kTextColor,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

// return Row(
    //   children: [
    //     Container(
    //       padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(20),
    //         color: kTextColor,
    //       ),
    //       child: const Text(
    //         'Sofas',
    //         style: TextStyle(
    //           fontFamily: kFontFamily,
    //           fontSize: 20,
    //           fontWeight: FontWeight.w500,
    //           color: kBackgroundColor,
    //         ),
    //       ),
    //     )
    //   ],
    // );
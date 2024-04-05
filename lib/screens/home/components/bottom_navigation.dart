import 'package:chairshopapp/constants.dart';
import 'package:chairshopapp/screens/catalog.dart';
import 'package:chairshopapp/screens/favourites.dart';
import 'package:chairshopapp/screens/profile.dart';
import 'package:chairshopapp/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

List pages = [
  Catalog(),
  Search(),
  Favourites(),
  Profile(),
];

int _selectedPage = 0;

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedPage],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(fill: BorderSide.strokeAlignCenter),
          selectedLabelStyle: TextStyle(fontFamily: kFontFamily, fontWeight: FontWeight.w500),
          unselectedLabelStyle: TextStyle(fontFamily: kFontFamily, fontWeight: FontWeight.w400),
          currentIndex: _selectedPage,
          onTap: (value) {
            setState(() {
              _selectedPage = value;
            });
          },
          items:  [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg', width: 30,),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/search.svg', width: 30,),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/heart.svg', width: 30,),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/profile.svg', width: 30,),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_ecommerce_app/constant.dart';

import '../../../../profile/profile_screen.dart';
import '../home_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;
  final List<Widget> _screen = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    ProfileScreen(),
  ];

  final Map<String, IconData> _icons = {
    'home': FontAwesomeIcons.house,
    'heart': FontAwesomeIcons.heart,
    'chat': FontAwesomeIcons.rocketchat,
    'User': FontAwesomeIcons.user,
  };

  // final Map<String, SvgPicture> _icons = {
  //   'home': SvgPicture.asset('assets/icons/Shop Icon.svg'),
  //   'heart': SvgPicture.asset("assets/icons/Heart Icon.svg"),
  //   'chat': SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
  //   'User': SvgPicture.asset("assets/icons/User Icon.svg"),
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screen[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: kPrimaryColor,

          unselectedItemColor: Colors.blue,
          selectedIconTheme: IconThemeData(size: 25, color: kPrimaryColor),
          unselectedIconTheme: IconThemeData(size: 20, color: kSecondaryColor),

          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: _icons
              .map((title, icon) {
                return MapEntry(title,
                    BottomNavigationBarItem(icon: Icon(icon), label: title));
              })
              .values
              .toList(),

          // [
          //   BottomNavigationBarItem(
          //       icon: SvgPicture.asset('assets/icons/Shop Icon.svg'),
          //       label: 'home'),
          //   BottomNavigationBarItem(
          //       icon: SvgPicture.asset('assets/icons/Heart Icon.svg'),
          //       label: 'heart'),
          //   BottomNavigationBarItem(
          //       icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg'),
          //       label: 'chat'),
          //   BottomNavigationBarItem(
          //       icon: SvgPicture.asset('assets/icons/User Icon.svg'),
          //       label: 'User'),
          // ],
        ));
  }
}

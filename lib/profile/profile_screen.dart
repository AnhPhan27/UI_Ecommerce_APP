import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ui_ecommerce_app/constant.dart';
import 'package:ui_ecommerce_app/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Stack(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(80),
                  height: getProportionateScreenHeight(80),
                  child: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/user_image.png')),
                ),
                Positioned(
                  bottom: -3,
                  right: -15,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.penToSquare,
                        color: kPrimaryColor,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const ProfileMenuCard(
              icon: Icons.person_2_outlined,
              text: 'My Account',
            ),
            const ProfileMenuCard(
              icon: FontAwesomeIcons.bell,
              text: 'Notifications',
            ),
            const ProfileMenuCard(
              icon: Icons.settings,
              text: 'Settings',
            ),
            const ProfileMenuCard(
              icon: Icons.help_outline,
              text: 'Help',
            ),
            const ProfileMenuCard(
              icon: FontAwesomeIcons.rightFromBracket,
              text: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuCard extends StatelessWidget {
  const ProfileMenuCard({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(10),
          horizontal: getProportionateScreenWidth(20)),
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon,
                  color: kPrimaryColor, size: getProportionateScreenWidth(26)),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(14)),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: kPrimaryColor,
                // size: getProportionateScreenWidth(30),
              )
            ],
          ),
        ),
      ),
    );
  }
}

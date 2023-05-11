import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/screens/home/widgets/discount_banner.dart';
import 'package:ui_ecommerce_app/screens/home/widgets/popular_products.dart';
import 'package:ui_ecommerce_app/screens/home/widgets/special_offer.dart';
import 'package:ui_ecommerce_app/size_config.dart';

import 'widgets/categories.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  SearchBarAndNotifications(),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  DiscountBanner(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Categories(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  SpecialOffer(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  PopularProducts(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

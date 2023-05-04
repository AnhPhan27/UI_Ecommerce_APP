import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: getProportionateScreenWidth(30)),
        width: double.infinity,
        height: getProportionateScreenHeight(80),
        child: RichText(
            text: TextSpan(
                text: 'A Summer Surprise',
                style: TextStyle(color: Colors.white),
                children: [
              TextSpan(
                  text: '\nCashback 20%',
                  style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(24)))
            ])),
      ),
    );
  }
}

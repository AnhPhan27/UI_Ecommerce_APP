import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/products.dart';
import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12),
          ),
          // decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(12),
                ),
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(40),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: getProportionateScreenWidth(55),
                height: getProportionateScreenHeight(35),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.rating.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/Star Icon.svg"),
                      ]),
                ),
              )
            ],
          )),
    );
  }
}

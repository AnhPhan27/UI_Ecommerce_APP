import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../model/products.dart';
import '../../../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.isSelected,
    required this.product,
  });

  final Product product;
  final int isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(12),
          left: getProportionateScreenWidth(20),
        ),
        child: Row(
          children: [
            ...List.generate(
              product.colors.length,
              (index) => Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: isSelected == index
                            ? kPrimaryColor
                            : Colors.transparent)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: product.colors[index],
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            RoundedIcon(
              icon: Icon(Icons.add, color: kPrimaryColor),
            ),
            RoundedIcon(
              icon: Icon(Icons.remove, color: kPrimaryColor),
            )
          ],
        ),
      )
    ]);
  }
}

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({
    super.key,
    required this.icon,
  });
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: InkWell(
          onTap: () {},
          child: icon,
        ));
  }
}

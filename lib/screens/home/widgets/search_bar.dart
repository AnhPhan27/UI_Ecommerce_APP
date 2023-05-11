import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ecommerce_app/size_config.dart';

import '../../../../constant.dart';

class SearchBarAndNotifications extends StatelessWidget {
  const SearchBarAndNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SearchTextFormField(),
        IconWithCounter(
          icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
          onTap: () {
            Navigator.pushNamed(context, '/cart_screen');
          },
          //=> Navigator.pushNamed(context, '/cart_screen'),
          numOfitems: 0,
        ),
        IconWithCounter(
          icon: SvgPicture.asset("assets/icons/Bell.svg"),
          onTap: () {},
          numOfitems: 5,
        ),
      ],
    );
  }
}

class IconWithCounter extends StatelessWidget {
  final GestureTapCallback onTap;
  final Widget icon;
  final int numOfitems;
  const IconWithCounter({
    super.key,
    required this.onTap,
    required this.icon,
    required this.numOfitems,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            width: getProportionateScreenWidth(40),
            height: getProportionateScreenHeight(40),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          if (numOfitems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(3)),
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.white)),
                child: Center(
                  child: Text('$numOfitems'.toString(),
                      style: const TextStyle(
                        fontSize: 10,
                        height: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(240),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kSecondaryColor.withOpacity(0.1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Search product',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

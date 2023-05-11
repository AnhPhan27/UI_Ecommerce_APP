import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ecommerce_app/size_config.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        categories.length,
        (index) => GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: getProportionateScreenWidth(60),
            child: Column(
              children: [
                Container(
                  width: getProportionateScreenWidth(60),
                  height: getProportionateScreenHeight(60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber[50],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SvgPicture.asset(categories[index]['icon'],
                        fit: BoxFit.contain),
                  ),
                ),
                Text(
                  categories[index]['text'],
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

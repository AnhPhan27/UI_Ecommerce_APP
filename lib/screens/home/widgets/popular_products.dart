import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ecommerce_app/constant.dart';
import 'package:ui_ecommerce_app/screens/home/details/details_screen.dart';

import '../../../model/products.dart';
import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Products',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: getProportionateScreenWidth(18),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'See More',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        ProductCard(),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.product,
  });
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: demoProducts.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 20),
          width: getProportionateScreenWidth(140),
          height: getProportionateScreenHeight(300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      DetailsScreen(product: demoProducts[index]),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // AspectRatio(
                //   aspectRatio: 1.02,

                Container(
                  width: getProportionateScreenWidth(140),
                  height: getProportionateScreenHeight(150),
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                      tag: demoProducts[index],
                      child: Image.asset(demoProducts[index].images[0])),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  demoProducts[index].title,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${demoProducts[index].price.toString()}',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        width: getProportionateScreenWidth(25),
                        height: getProportionateScreenHeight(25),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(50),
                          shape: BoxShape.circle,
                          color: demoProducts[index].isFavourite
                              ? kPrimaryColor.withOpacity(0.15)
                              : kSecondaryColor.withOpacity(0.1),
                        ),
                        // child: Padding(
                        //     padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          size: getProportionateScreenWidth(15),
                          Icons.favorite,
                          color: demoProducts[index].isFavourite
                              ? const Color(0xFFFF4848)
                              : const Color(0xFFDBDEE4),
                        )
                        // ignore: deprecated_member_use

                        // ),

                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

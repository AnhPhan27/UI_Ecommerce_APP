import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/size_config.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

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
                'Special for you',
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
            ]),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: Image.asset('assets/images/Image Banner 2.png',
                    fit: BoxFit.cover),
                numOfBrands: '18 Brands',
                title: 'SmartPhone',
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
              SpecialOfferCard(
                image: Image.asset('assets/images/Image Banner 3.png',
                    fit: BoxFit.cover),
                numOfBrands: '24 Brands',
                title: 'Fashion',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.image,
    required this.title,
    required this.numOfBrands,
  });
  final Image? image;
  final String? title;
  final String numOfBrands;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(242),
      height: getProportionateScreenHeight(100),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            image!,
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // begin: FractionalOffset(0.0, 0.0),
                  // end: FractionalOffset(1.0, 1.0),
                  // stops: [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF343434).withOpacity(0.4),
                    Color(0xFF343434).withOpacity(0.15),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15),
              child: RichText(
                text: TextSpan(
                    text: title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                    children: [
                      TextSpan(
                        text: '\n$numOfBrands',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

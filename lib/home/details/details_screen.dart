import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce_app/model/products.dart';
import 'package:ui_ecommerce_app/size_config.dart';
import 'package:ui_ecommerce_app/widgets/default_button.dart';

import '../../constant.dart';
import 'widgets/color_dots.dart';
import 'widgets/custom_appbar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedImage = 0;
  final int isSelected = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(getProportionateScreenWidth(85)),
          child: CustomAppBar(product: widget.product)),
      body: ListView(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40),
                ),
                width: double.infinity,
                height: getProportionateScreenHeight(200),
                child: Hero(
                  tag: widget.product,
                  child: Image.asset(widget.product.images[selectedImage]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.product.images.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = index;
                      });
                    },
                    child: AnimatedContainer(
                      margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(10),
                      ),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPrimaryColor
                              .withOpacity(selectedImage == index ? 1 : 0),
                        ),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      duration: kAnimationDuration,
                      child: Image.asset(widget.product.images[index]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Text(
                    widget.product.title,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: getProportionateScreenWidth(80),
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: widget.product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // top: getProportionateScreenHeight(15),
                      left: getProportionateScreenWidth(20),
                      right: getProportionateScreenWidth(75)),
                  child: Text(widget.product.description, maxLines: 3),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(20),
                    top: getProportionateScreenHeight(10),
                    bottom: getProportionateScreenHeight(30),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Text(
                          'See more details',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(8)),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: getProportionateScreenWidth(12),
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TopRoundedContainer(
                    color: kSecondaryColor.withOpacity(0.1),
                    child: Column(
                      children: [
                        ColorDots(
                          isSelected: 3,
                          product: widget.product,
                        ),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                getProportionateScreenWidth(30),
                                getProportionateScreenHeight(40),
                                getProportionateScreenWidth(30),
                                getProportionateScreenHeight(50),
                              ),
                              child: DefaultButton(
                                  width: double.infinity,
                                  navigatorPushName: () {},
                                  text: 'Add To Cart'),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    super.key,
    required this.child,
    required this.color,
  });

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(10),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: child,
    );
  }
}

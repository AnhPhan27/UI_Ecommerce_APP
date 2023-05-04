import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/model/Cart.dart';
import 'package:ui_ecommerce_app/size_config.dart';
import 'widgets/cart_card.dart';
import 'widgets/checkout_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: CartCard(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Column(children: [
        const Text(
          'Your Cart',
          style: TextStyle(color: Colors.black),
        ),
        Text(
          '${demoCarts.length}items',
          style: TextStyle(fontSize: getProportionateScreenWidth(12)),
        ),
      ]),
    );
  }
}

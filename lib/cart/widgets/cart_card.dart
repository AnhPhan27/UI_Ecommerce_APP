import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../model/Cart.dart';
import '../../size_config.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    super.key,
  });

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  void onPress(int index) {
    setState(() {
      demoCarts.removeAt(index);
    });
    const snackBar = SnackBar(
      content: Text('Delete success'),
      backgroundColor: kPrimaryColor,
      duration: Duration(seconds: 2),
    );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoCarts.length,
      itemBuilder: (context, index) => SizedBox(
        width: double.infinity,
        child: Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  onPress(index);
                },
                backgroundColor: kPrimaryColor,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(20)),
                width: getProportionateScreenWidth(75),
                height: getProportionateScreenHeight(90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: kSecondaryColor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(demoCarts[index].product.images[0]),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    demoCarts[index].product.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(14)),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '\$${demoCarts[index].product.price}  ',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: 'x${demoCarts[index].numOfItem}',
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

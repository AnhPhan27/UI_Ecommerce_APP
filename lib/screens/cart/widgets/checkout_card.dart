import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
import '../../../widgets/default_button.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(200),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(30),
                horizontal: getProportionateScreenWidth(20)),
            child: Row(
              children: [
                Container(
                    width: getProportionateScreenWidth(45),
                    height: getProportionateScreenHeight(45),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: kSecondaryColor.withOpacity(0.1)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/receipt.svg'),
                    )),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Add voucher code',
                        style: TextStyle(
                          // color: kSecondaryColor.withOpacity(0.1),
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Icon(Icons.arrow_forward_ios,
                          size: getProportionateScreenWidth(14))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Total\n',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          color: kSecondaryColor),
                      children: [
                        TextSpan(
                            text: '\$337.15',
                            style: TextStyle(color: Colors.black))
                      ]),
                ),
                Spacer(),
                DefaultButton(
                    width: getProportionateScreenWidth(150),
                    navigatorPushName: () {},
                    text: 'Checkout')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

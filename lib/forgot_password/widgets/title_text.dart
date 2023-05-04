import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(60)),
      child: RichText(
        maxLines: 3,
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Forgot Password\n',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              color: Colors.black,
              fontWeight: FontWeight.w600),
          children: const [
            TextSpan(
                text:
                    'Please enter your email and we will send you a link to return to your account',
                style: TextStyle(
                    fontSize: 14,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w400))
          ],
        ),
      ),
    );
  }
}

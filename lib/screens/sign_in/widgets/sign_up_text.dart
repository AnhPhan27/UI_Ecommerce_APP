import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have account?',
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        SizedBox(width: getProportionateScreenWidth(5)),
        InkWell(
          onTap: onTap,
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
        ),
      ],
    );
  }
}

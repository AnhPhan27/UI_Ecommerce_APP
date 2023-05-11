import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class SocialAccount extends StatefulWidget {
  const SocialAccount({super.key});

  @override
  State<SocialAccount> createState() => _SocialAccountState();
}

class _SocialAccountState extends State<SocialAccount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: SvgPicture.asset('assets/icons/google-icon.svg')),
        IconButton(icon: SvgPicture.asset('assets/icons/facebook-2.svg')),
        IconButton(icon: SvgPicture.asset('assets/icons/twitter.svg')),
      ],
    );
  }
}

class IconButton extends StatelessWidget {
  const IconButton({
    super.key,
    required this.icon,
  });
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Color(0xFFF5F6F9),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () {},
        child: icon,
      ),
    );
  }
}

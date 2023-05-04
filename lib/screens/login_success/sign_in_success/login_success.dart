import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/constant.dart';
import 'package:ui_ecommerce_app/size_config.dart';
import 'package:ui_ecommerce_app/widgets/default_button.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Login Success',
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Image.asset('assets/images/success.png'),
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Text('Login Success',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(50)),
              child: DefaultButton(
                navigatorPushName: () {
                  Navigator.pushNamed(context, '/nav');
                },
                text: "Back to home",
                width: double.infinity,
              ),
            ),
            const Spacer(),
          ],
        ));
  }
}

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ui_ecommerce_app/sign_in/widgets/email_formfield.dart';
import 'package:ui_ecommerce_app/sign_in/widgets/sign_up_text.dart';
import 'package:ui_ecommerce_app/size_config.dart';
import 'package:ui_ecommerce_app/widgets/default_button.dart';

import '../validator.dart';
import 'widgets/title_text.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Forgot Password'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(50),
            ),
            TitleText(),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: EmailFormField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  icon: Icon(FontAwesomeIcons.envelope),
                  emailController: _emailController,
                  validator: (value) {
                    return NPValidator.error(value!, SpeciesType.EMAIL);
                  }),
            ),
            Spacer(
              flex: 1,
            ),
            DefaultButton(
                navigatorPushName: () {},
                text: 'Continue',
                width: double.infinity),
            SizedBox(
              height: getProportionateScreenWidth(50),
            ),
            SignUpText(
              onTap: () {
                Navigator.pushNamed(context, '/Sign_up');
              },
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}

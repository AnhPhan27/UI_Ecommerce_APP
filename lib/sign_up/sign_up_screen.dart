import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../sign_in/widgets/confirm_password_formfield.dart';
import '../sign_in/widgets/email_formfield.dart';
import '../sign_in/widgets/password_formfield.dart';
import '../sign_in/widgets/social_account.dart';
import '../size_config.dart';
import '../validator.dart';
import '../widgets/default_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
        ),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: getProportionateScreenHeight(30)),
                        Text(
                          'Register Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Complete your details or continue\nwith social media',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: getProportionateScreenHeight(60)),
                        EmailFormField(
                            hintText: 'Enter your Email',
                            labelText: 'Email',
                            icon: Icon(FontAwesomeIcons.envelope),
                            emailController: _emailController,
                            validator: (value) {
                              return NPValidator.error(
                                  value!, SpeciesType.EMAIL);
                            }),
                        SizedBox(height: getProportionateScreenHeight(30)),
                        PassWordFormField(
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          icon: Icon(Icons.lock_outline),
                          validator: (value) {
                            return NPValidator.error(
                              value!,
                              SpeciesType.PASSWORD_1,
                            );
                          },
                          controller: _passwordController,
                        ),
                        SizedBox(height: getProportionateScreenHeight(30)),
                        ConFirmPassWordFormField(
                          labelText: 'Confirm Password',
                          hintText: 'Re-enter your Password',
                          icon: Icon(Icons.lock_outline),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter re-Password';
                            }
                            if (_passwordController.text !=
                                _confirmPasswordController.text) {
                              return 'Password do not macth';
                            }
                          },
                          controller: _confirmPasswordController,
                        ),
                        SizedBox(height: getProportionateScreenHeight(30)),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        DefaultButton(
                          navigatorPushName: () {
                            _formKey.currentState!.validate();
                          },
                          text: 'Continue',
                          width: double.infinity,
                        ),
                        SizedBox(height: getProportionateScreenHeight(60)),
                        const SocialAccount(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        Text(
                          'By continuing your confirm that you agree\nwith our Term and Condition',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

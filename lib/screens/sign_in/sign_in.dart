import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../size_config.dart';
import '../../validator.dart';
import '../../widgets/default_button.dart';
import 'widgets/checkbox_row.dart';

import 'widgets/email_formfield.dart';
import 'widgets/password_formfield.dart';
import 'widgets/sign_up_text.dart';
import 'widgets/social_account.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
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
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: getProportionateScreenHeight(30)),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Sign in with your email and password\nor continue with social media',
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
                                value!,
                                SpeciesType.EMAIL,
                              );
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
                        const CheckBoxRow(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        DefaultButton(
                          navigatorPushName: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, '/sign_in_success');
                            }
                          },
                          text: 'Continue',
                          width: double.infinity,
                        ),
                        SizedBox(height: getProportionateScreenHeight(60)),
                        const SocialAccount(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        SignUpText(
                          onTap: () {
                            Navigator.pushNamed(context, '/Sign_up');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'welcome_screen/welcome_screen.dart';
import 'cart/cart_screen.dart';
import 'forgot_password/forgot_password_screen.dart';

import 'home/home_screen.dart';
import 'home/nav_screen/navigation_screen.dart';
import 'sign_in/sign_in.dart';
import 'login_success/sign_in_success/login_success.dart';
import 'sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/splash': (context) => WelcomeScreen(),
  '/sign_in': (context) => SignIn(),
  '/sign_in_success': (context) => LoginSuccess(),
  '/home': (context) => HomeScreen(),
  '/nav': (context) => NavScreen(),
  '/cart_screen': (context) => CartScreen(),
  '/forgot_password': (context) => ForgotPasswordScreen(),
  '/Sign_up': (context) => SignUpScreen(),
};

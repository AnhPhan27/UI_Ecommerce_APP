import 'package:flutter/material.dart';

import 'screens/welcome_screen/welcome_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';

import 'screens/home/home_screen.dart';
import 'screens/home/nav_screen/navigation_screen.dart';
import 'screens/sign_in/sign_in.dart';
import 'screens/login_success/sign_in_success/login_success.dart';
import 'screens/sign_up/sign_up_screen.dart';

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

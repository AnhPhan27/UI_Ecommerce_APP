import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/theme.dart';

import 'routes.dart';
import 'screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: '/splash',
      routes: routes,
    );
  }
}

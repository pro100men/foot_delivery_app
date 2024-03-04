import 'package:flutter/material.dart';
import 'package:foot_delivery_app/pages/CartPage.dart';
import 'package:foot_delivery_app/pages/ItemPage.dart';
import 'package:foot_delivery_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xfff5f5f3)),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}

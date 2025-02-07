import 'package:ecommerce_kpi/pages/CartPage.dart';
import 'package:ecommerce_kpi/pages/Homepage.dart';
import 'package:ecommerce_kpi/pages/ProfilePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => HomePage(),
        "goToCartPage": (context) => CartPage(),
        "profilePage": (context) => ProfilePage()
      },
    );
  }
}

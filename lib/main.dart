import 'package:becho_v2/Cart.dart';
import 'package:becho_v2/profile_page.dart';
import 'package:becho_v2/signup.dart';
import 'package:flutter/material.dart';
import 'package:becho_v2/login.dart';
import 'HomePage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignupPage(),
        '/homepage': (BuildContext context) => HomePage(),
        '/cartpage': (BuildContext context) => CartPage(),
        '/profile': (BuildContext context) => ProfilePage(),
      },
      theme: ThemeData(
        fontFamily: 'poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
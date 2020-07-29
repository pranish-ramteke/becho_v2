import 'package:becho_v2/Cart.dart';
import 'package:becho_v2/profile_page.dart';
import 'package:becho_v2/search_page.dart';
import 'package:becho_v2/signup.dart';
import 'package:flutter/material.dart';
import 'package:becho_v2/login.dart';
import 'HomePage.dart';
import 'category_list_page.dart';
import 'faq_page.dart';
import 'notifications_page.dart';

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
        '/faq': (BuildContext context) => FaqPage(),
        '/searchicon': (BuildContext context) => SearchPage(),
        '/notifications_page': (BuildContext context) => NotificationsPage(),
        '/category_page': (BuildContext context) => CategoryListPage(),
      },
      theme: ThemeData(
        fontFamily: 'poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
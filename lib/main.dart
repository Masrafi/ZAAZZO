import 'package:flutter/material.dart';

import 'utils/ui/home_page.dart';
import 'utils/ui/navbar/navbar.dart';
import 'utils/ui/navbar/navbar_category.dart';
import 'utils/ui/product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ProductDetails(),
        '/home': (context) => HomePage(),
        '/navbar': (context) => NavBar(),
        '/navbarcategory': (context) => NavBarCategory(),
      },
    );
  }
}

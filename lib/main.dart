import 'package:flutter/material.dart';
import 'package:fruit_shop/home_page.dart';
import 'package:fruit_shop/splash_screen.dart';
// import 'package:fru

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/views/main_screen.dart';
import 'package:food_app/views/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking Recipes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.white,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home: SplashScreen(),
    );
  }
}

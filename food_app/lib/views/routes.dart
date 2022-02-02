import 'package:flutter/material.dart';
import 'package:food_app/views/main_screen.dart';
import 'home_screen.dart';

Map<String, Widget Function(BuildContext)> routes =
    <String, Widget Function(BuildContext)>{
  HomeScreen.routeName: (BuildContext ctx) => const HomeScreen(),
};

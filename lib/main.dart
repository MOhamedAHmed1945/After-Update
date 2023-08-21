import 'package:flutter/material.dart';
import 'package:master/Screens/intro_screen.dart';
import 'package:master/Screens/nav_bar/nav_bar_screens/home_screen.dart';
import 'package:master/Screens/nav_bar/main_navbar.dart';
import 'package:master/Screens/nav_bar/nav_bar_screens/profile_screens/edit_profile_screen.dart';
import 'Screens/nav_bar/nav_bar_screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: IntroScreen(),
      routes: {
        IntroScreen.introRoute: (context) => IntroScreen(),
        MainNavBar.mainNavBarRoute: (context) => MainNavBar(),
        HomeScreen.homeRoute: (context) => HomeScreen(),
        EditeProfileScreen.editeProfileRoute: (context) => EditeProfileScreen(),
        CategoriesScreen.categoriesScreenRoute: (context) => CategoriesScreen(),
        // DecorationCategoriesScreen.decorationCategoriesScreenRoute: (context) =>
        //     DecorationCategoriesScreen(),
      },
    );
  }
}

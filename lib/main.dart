import 'package:master/Models/profile_model.dart';
import 'package:master/Screens/intro_screen.dart';
import 'package:master/Screens/nav_bar/nav_bar_screens/home_screen.dart';
import 'package:master/Screens/nav_bar/main_navbar.dart';
import 'package:master/Screens/nav_bar/nav_bar_screens/profile_screens/edit_profile_screen.dart';
import 'package:master/constants/constants.dart';
import 'Screens/nav_bar/nav_bar_screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kProfileBox);
  //Hive.registerAdapter(ProfileModelAdapter());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home:  const IntroScreen(),//EditeProfileScreen(),//IntroScreen(),
      routes: {
        IntroScreen.introRoute: (context) => const IntroScreen(),
        MainNavBar.mainNavBarRoute: (context) => const MainNavBar(),
        HomeScreen.homeRoute: (context) => const HomeScreen(),
        EditeProfileScreen.editeProfileRoute: (context) => EditeProfileScreen(),
        CategoriesScreen.categoriesScreenRoute: (context) => CategoriesScreen(),
        // DecorationCategoriesScreen.decorationCategoriesScreenRoute: (context) =>
        //     DecorationCategoriesScreen(),
      },
    );
  }
}
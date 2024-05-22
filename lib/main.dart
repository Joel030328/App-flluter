import 'package:flutter/material.dart';
import 'package:app_personal/pages/home_page.dart';
import 'package:app_personal/pages/about_me_page.dart';
import 'package:app_personal/pages/hobbies_page.dart';
import 'package:app_personal/pages/career_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal APP',
      initialRoute: 'home',
      routes: {
        'home':(context) => Homepage(),
        'about_me':(context) => AboutMePage(),
        'hobbies':(context) => HobbiesPage(),
        'career':(context) => CareerPage(),
      },
    );
  }
}


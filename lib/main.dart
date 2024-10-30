import 'package:flutter/material.dart';
import 'package:rental_car/home_screen.dart';
import 'package:rental_car/detail_view.dart';
import 'package:rental_car/main_menu.dart';

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
      title: "Bradsburry Healthcare",
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/locations': (context) => MainMenu(),
        '/widget': (context) => DetailView(),
        // Add more routes here as needed
      },
    );
  }
}


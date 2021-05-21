import 'package:final_gloggapp/ui/screens/home.dart';
import 'package:final_gloggapp/ui/screens/login.dart';
import 'package:flutter/material.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}

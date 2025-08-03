import 'package:flutter/material.dart';
import 'package:tasks_app/screens/favorites/favorites_screen.dart';

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Flutter",
      debugShowCheckedModeBanner: false,
      home: FavoritesScreen(),
    );
  }
}

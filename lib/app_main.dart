import 'package:flutter/material.dart';
import 'package:tasks_app/screens/instagram_screen.dart';

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tasks Flutter",
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: InstagramScreen(),
    );
  }
}

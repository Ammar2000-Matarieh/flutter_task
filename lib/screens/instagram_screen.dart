import 'package:flutter/material.dart';
import 'package:tasks_app/screens/add_post.dart';
import 'package:tasks_app/screens/favorites.dart';
import 'package:tasks_app/screens/profile.dart';
import 'package:tasks_app/screens/search.dart';
import 'package:tasks_app/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:tasks_app/widgets/custom_home_screen.dart';

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  List<Widget> screens = [
    CustomHomeScreen(),
    Search(),
    AddPost(),
    Favorites(),
    Profile(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBarWidget(),
      body: screens[currentIndex],
    );
  }
}

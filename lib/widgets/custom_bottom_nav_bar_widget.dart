import 'package:flutter/material.dart';
import 'package:tasks_app/screens/add_post.dart';
import 'package:tasks_app/screens/favorites.dart';
import 'package:tasks_app/screens/profile.dart';
import 'package:tasks_app/screens/search.dart';
import 'package:tasks_app/widgets/custom_home_screen.dart';

class CustomBottomNavBarWidget extends StatefulWidget {
  const CustomBottomNavBarWidget({super.key});

  @override
  State<CustomBottomNavBarWidget> createState() =>
      _CustomBottomNavBarWidgetState();
}

class _CustomBottomNavBarWidgetState extends State<CustomBottomNavBarWidget> {
  List<Widget> screens = [
    CustomHomeScreen(),
    Search(),
    AddPost(),
    Favorites(),
    Profile(),
  ];

  int currentIndex = 0;

  void changeNavBar(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: changeNavBar,
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: "Search",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundImage: AssetImage("assets/images/image.png"),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}

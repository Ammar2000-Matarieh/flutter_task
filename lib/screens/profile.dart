import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_body_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock),
            Text("jacob_w"),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.list_outlined)),
        ],
      ),

      body: CustomBodyProfile(),
    );
  }
}

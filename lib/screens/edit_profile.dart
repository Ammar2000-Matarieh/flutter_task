import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_body_edit_profile_widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        centerTitle: true,
        title: Text("Edit Profile"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 130,
            height: 60,
            decoration: BoxDecoration(color: Color(0xffFAFAFA)),
            child: Center(child: Text("Cancel")),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Text("Done"))],
      ),
      body: CustomBodyEditProfileWidget(),
    );
  }
}

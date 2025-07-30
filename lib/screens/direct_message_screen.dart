import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_body_direct_message.dart';
import 'package:tasks_app/widgets/custom_bottom_sheet.dart';

class DirectMessageScreen extends StatelessWidget {
  const DirectMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Color(0xff121212),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "jacob_w",
              style: TextStyle(
                color: Color(0xffF9F9F9),
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down, color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
      bottomSheet: CustomBottomSheet(),
      body: CustomBodyDirectMessageWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_item_profile_info.dart';

class CustomBodyEditProfileWidget extends StatelessWidget {
  const CustomBodyEditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Center(
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/image.png"),
            ),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Text(
              "Change Profile Photo",
              style: TextStyle(color: Color(0xff3897F0)),
            ),
          ),
          SizedBox(height: 6),
          Divider(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) =>
                CustomItemProfileInfo(textOwn: "Name", textTwo: "Jacob West"),
          ),
          SizedBox(height: 6),
          Divider(),

          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Switch to Professional Account",
                  style: TextStyle(
                    color: Color(0xff3897F0),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Private Information",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) => CustomItemProfileInfo(
              textOwn: "Email",
              textTwo: "jacob.west@gmail.com",
            ),
          ),
        ],
      ),
    );
  }
}

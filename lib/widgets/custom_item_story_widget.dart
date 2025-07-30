import 'package:flutter/material.dart';

class CustomItemStoryWidget extends StatelessWidget {
  const CustomItemStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xffFBAA47),
                  Color(0xffD91A46),
                  Color(0xffA60F93),
                ],
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/image.png"),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Your Story",
            style: TextStyle(
              color: Color(0xff262626),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomItemInfo extends StatelessWidget {
  const CustomItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff48484A),
          ),
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/image_stories.png"),
            ),
          ),
        ),
        SizedBox(height: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "joshua_l",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt_outlined),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Have a nice day, bro!",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  // Spacer(),
                  Text("· now", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                ],
              ),

              // SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

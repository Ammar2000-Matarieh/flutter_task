import 'package:flutter/material.dart';

class CustomBodyYouWidget extends StatefulWidget {
  const CustomBodyYouWidget({super.key});

  @override
  State<CustomBodyYouWidget> createState() => _CustomBodyYouWidgetState();
}

class _CustomBodyYouWidgetState extends State<CustomBodyYouWidget> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Follow Requests",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(height: 6),
          Divider(),
          Text(
            "New",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage("assets/images/image.png"),
              ),
              SizedBox(width: 10),
              Text("karennne liked your photo. 1h"),
              Spacer(),
              Image.asset(
                "assets/images/grid_image.png",
                width: 44,
                height: 44,
              ),
              SizedBox(width: 10),
            ],
          ),

          Divider(),
          Text(
            "Today",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),

          SizedBox(height: 8),
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage("assets/images/image.png"),
                  ),
                  Positioned(
                    bottom: -6,
                    right: -6,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage(
                        "assets/images/image_person.png",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 18),
              Text("kiero_d, zackjohn and 26 others\n liked your photo. 3h"),
              Spacer(),
              Image.asset(
                "assets/images/grid_image.png",
                width: 44,
                height: 44,
              ),
              SizedBox(width: 10),
            ],
          ),

          SizedBox(height: 10),
          Divider(),
          Text("This Week"),
          SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage("assets/images/image.png"),
              ),
              SizedBox(width: 18),
              Text(
                "craig_love mentioned you in a\n comment: @jacob_w exactly..\n💫 2d",
              ),
              Spacer(),
              Image.asset(
                "assets/images/grid_image.png",
                width: 44,
                height: 44,
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                SizedBox(width: 10),
                Text("Reply"),
              ],
            ),
          ),
          SizedBox(height: 10),

          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 15),
              itemCount: 3,
              shrinkWrap: true,

              itemBuilder: (context, index) => Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/image_person.png",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("martini_rond started\n following you. 3d"),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: Colors.grey),
                      ),
                      backgroundColor: isClick ? Colors.white : Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        isClick = true;
                      });
                    },
                    child: Text(
                      isClick ? "Message" : "Follow",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: isClick ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          SizedBox(height: 13),
          Text("This Month"),
          SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 15),
              itemCount: 3,
              shrinkWrap: true,

              itemBuilder: (context, index) => Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/image_person.png",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("martini_rond started\n following you. 3d"),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: Colors.grey),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Message",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

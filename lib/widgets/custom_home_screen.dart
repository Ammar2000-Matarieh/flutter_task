import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_item_story_widget.dart';

class CustomHomeScreen extends StatelessWidget {
  const CustomHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
        ),
        centerTitle: true,
        title: Text("Instagram", style: TextStyle(color: Color(0xff262626))),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.tv)),
              Positioned(
                right: 10,
                child: CircleAvatar(radius: 5, backgroundColor: Colors.red),
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => CustomItemStoryWidget(),
              ),
            ),

            Divider(),
            SizedBox(height: 8),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/image.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("joshua_l"),
                              SizedBox(width: 20),
                              Icon(
                                Icons.check_circle,
                                color: Color(0xff3897F0),
                              ),
                            ],
                          ),
                          Text("Tokyo, Japan"),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onDoubleTap: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .45,
                    child: Image.asset(
                      "assets/images/image_larg.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mode_comment_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send_outlined),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_border),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage("assets/images/image.png"),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Liked by craig_love and 44,686 others",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "joshua_l The game in Japan was amazing and I want to share some photos",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

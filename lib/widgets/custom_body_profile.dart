import 'package:flutter/material.dart';
import 'package:tasks_app/screens/edit_profile.dart';
import 'package:tasks_app/widgets/custom_story_list_view_widget.dart';

class CustomBodyProfile extends StatelessWidget {
  const CustomBodyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color(0xffFBAA47),
                  //     Color(0xffD91A46),
                  //     Color(0xffA60F93),
                  //   ],
                  // ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/image.png"),
                  ),
                ),
              ),
              Spacer(),
              CustomItemColumn(numbers: 54, text: "Posts"),
              SizedBox(width: 20),
              CustomItemColumn(numbers: 834, text: "Followers"),

              SizedBox(width: 20),
              CustomItemColumn(numbers: 162, text: "Following"),

              SizedBox(width: 30),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jacob West",
                style: TextStyle(
                  color: Color(0xff262626),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                "Digital goodies designer @pixsellz \nEverything is designed.",
                style: TextStyle(
                  color: Color(0xff262626),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => EditProfile()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .040,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Color(0xff262626),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          CustomStoryListViewWidget(
            title: "Sport",
            image: "assets/images/image.png",
          ),

          SizedBox(height: 10),
          Divider(),
          Container(
            // padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .046,
            decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 70),
                IconButton(onPressed: () {}, icon: Icon(Icons.grid_on_rounded)),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.tag)),
                SizedBox(width: 70),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) => Container(
                width: MediaQuery.sizeOf(context).width,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/grid_image.png"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomItemColumn extends StatelessWidget {
  final int numbers;
  final String text;
  const CustomItemColumn({
    super.key,
    required this.numbers,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numbers.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff262626),
            fontSize: 16,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xff262626),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

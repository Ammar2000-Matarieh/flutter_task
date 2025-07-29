import 'package:flutter/material.dart';

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
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) => Container(
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff121212),
          child: Column(
            children: [
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt_outlined, color: Color(0xff3897F0)),
                    SizedBox(width: 8),
                    Text("Camera", style: TextStyle(color: Color(0xff3897F0))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 6),
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xff262626),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (context, index) => CustomItemInfo(),
            ),
          ),
        ],
      ),
    );
  }
}

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

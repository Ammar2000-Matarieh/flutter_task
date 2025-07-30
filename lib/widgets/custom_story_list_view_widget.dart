import 'package:flutter/material.dart';

class CustomStoryListViewWidget extends StatelessWidget {
  final String title;
  final String image;
  const CustomStoryListViewWidget({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(image),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff262626),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

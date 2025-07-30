import 'package:flutter/material.dart';

class CustomItemProfileInfo extends StatelessWidget {
  final String textOwn;
  final String textTwo;
  const CustomItemProfileInfo({
    super.key,
    required this.textOwn,
    required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 25),
          child: Row(
            children: [
              Text(
                textOwn,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 50),
              Text(textTwo),
            ],
          ),
        ),
        SizedBox(height: 7),
        Divider(indent: 130, endIndent: 20),
      ],
    );
  }
}

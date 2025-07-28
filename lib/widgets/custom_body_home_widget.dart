import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_button.dart';

class CustomBodyHomeWidget extends StatelessWidget {
  const CustomBodyHomeWidget({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            // textAlign: TextAlign.start,
            description,
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 20),
        CustomButton(
          onTap: () {},
          text: "Sign In",
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(height: 10),

        CustomButton(
          onTap: () {},
          text: "Sign Up",
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}

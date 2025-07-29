import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(children: [Text("Login"), SizedBox(height: 25)]),
      ),
    );
  }
}

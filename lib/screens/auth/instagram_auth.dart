import 'package:flutter/material.dart';
import 'package:tasks_app/screens/auth/login_screen.dart';

class InstagramAuth extends StatelessWidget {
  const InstagramAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign up.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: Color(0xff262626), fontSize: 30),
            ),
            SizedBox(height: 30),
            CircleAvatar(
              radius: 42,
              backgroundImage: AssetImage("assets/images/image.png"),
            ),
            SizedBox(height: 10),
            Text("jacob_w"),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .05,
                decoration: BoxDecoration(
                  color: Color(0xff3797EF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                "Switch accounts",
                style: TextStyle(
                  color: Color(0xff3797EF),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Spacer(),
            // SizedBox.expand(),
          ],
        ),
      ),
    );
  }
}

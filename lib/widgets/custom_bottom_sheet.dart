import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
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
    );
  }
}

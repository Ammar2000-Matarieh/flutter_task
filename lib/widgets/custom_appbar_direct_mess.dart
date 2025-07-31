import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarDirectMessWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarDirectMessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff121212),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.search, color: Colors.white),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

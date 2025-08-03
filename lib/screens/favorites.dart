import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_body_you_widget.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  "Following",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  "You",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Favorite Products')),
            CustomBodyYouWidget(),
          ],
        ),
      ),
    );
  }
}

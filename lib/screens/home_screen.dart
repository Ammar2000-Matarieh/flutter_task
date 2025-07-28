import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_body_home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // larger :
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/burggures_flutter.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomBodyHomeWidget(
          title: "Nom Restaurant",
          description: "Delicious food delivered to your door",
        ),
      ),
    );
  }
}

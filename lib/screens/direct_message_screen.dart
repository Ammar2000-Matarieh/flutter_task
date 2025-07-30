import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_appbar_direct_mess.dart';
import 'package:tasks_app/widgets/custom_body_direct_message.dart';
import 'package:tasks_app/widgets/custom_bottom_sheet.dart';

class DirectMessageScreen extends StatelessWidget {
  const DirectMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: CustomAppBarDirectMessWidget(),
      bottomSheet: CustomBottomSheet(),
      body: CustomBodyDirectMessageWidget(),
    );
  }
}

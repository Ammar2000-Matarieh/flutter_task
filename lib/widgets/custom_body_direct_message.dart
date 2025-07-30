import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_item_info_widget.dart';

class CustomBodyDirectMessageWidget extends StatelessWidget {
  const CustomBodyDirectMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 6),
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Color(0xff262626),
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) => CustomItemInfo(),
          ),
        ),
      ],
    );
  }
}

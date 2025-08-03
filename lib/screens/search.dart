import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 39,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hint: Text("Search"),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 6),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/Live.png"),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 45,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: 19,
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  width: 70,
                  // height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Row(children: [Icon(Icons.live_tv), Text("IGTV")]),
                ),
              ),
            ),
            SizedBox(height: 10),

            Expanded(
              child: GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) => Container(
                  width: MediaQuery.sizeOf(context).width,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/grid_image.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

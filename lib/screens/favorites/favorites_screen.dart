import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(4),
          width: 40,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.location_on_outlined), Text("Callifornia")],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/images/profile_circle.png"),
            ),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Your Favorite Cars",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * .38,
                          decoration: BoxDecoration(
                            color: Color(0xff0f0e0e14),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    right: 10,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border),
                                  ),
                                ),
                              ),
                              // SizedBox(height: 20),
                              Image.asset("assets/images/cars.png"),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BMW 328",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Automatic",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text("${2100}/Day"),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(102, 28),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                side: BorderSide(color: Color(0xffEBB739)),
                              ),
                              onPressed: () {},
                              child: Text(
                                "View",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// Scaffold(
//       appBar: AppBar(
//         leading: Container(
//           margin: EdgeInsets.all(4),
//           width: 40,
//           height: 30,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.grey),
//           ),
//           child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
//         ),
//         actions: [
//           Container(
//             // margin: EdgeInsets.all(2),
//             // width: 40,
//             // height: 30,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(color: Colors.grey),
//             ),
//             child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
//           ),
//           SizedBox(width: 20),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(children: [Text("Payment methods"), 
//         SizedBox(height: 20,), 
//         Container(
//           width: MediaQuery.sizeOf(context).width,
//           height: MediaQuery.sizeOf(context).height * .6,
//           decoration: BoxDecoration(
            
//           ),
//         ), 
        
        
        
//         ]),
//       ),
//     );
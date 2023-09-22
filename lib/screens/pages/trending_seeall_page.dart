import 'package:flutter/material.dart';
import 'package:mloflow/screens/tabs_pages/chef_favorite_page.dart';
import 'package:mloflow/screens/tabs_pages/menu_favorite_page.dart';

class Trending_page extends StatelessWidget {
  const Trending_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'F a v o r i t e',
            style: TextStyle(color: Colors.grey[700]),
          ),
          backgroundColor: Color(0xFFEDECF2),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black26,
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: 'M E N U',
              ),
              Tab(
                text: 'C H E F S',
              )
            ]),
            Expanded(
              child: TabBarView(children: [
                Menu_Page(),
                Chefs_Page(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}








// import 'package:flutter/material.dart';

// class Trending extends StatelessWidget {
//   //const HomeScreen({super.key});

//   List movies = [
//     "chef4",
//     "chef5",
//     "chef2",
//     "chef6",
//     "chef4",
//   ];
//   List movies2 = [
//     "food8",
//     "food5",
//     "food4",
//     "food7",
//     "food7",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFEDECF2),
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Icon(
//             Icons.arrow_back_ios_new,
//             color: Colors.black26,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 224, 189, 15),
//                     ),
//                     child: Text(
//                       "Top Chefs",
//                       style: TextStyle(
//                           color: Colors.white70,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           letterSpacing: 1),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 390,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(8),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         InkWell(
//                           onTap: () {},
//                           child: ClipRRect(
//                             borderRadius: BorderRadiusDirectional.circular(15),
//                             child: Image.asset(
//                               "assets/images/${movies[index]}.png",
//                               height: 280,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Padding(
//                           padding: EdgeInsets.only(left: 8),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 movies[index],
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               SizedBox(height: 8),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 15),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 224, 189, 15),
//                     ),
//                     child: Text(
//                       "Favorite Orders",
//                       style: TextStyle(
//                           color: Colors.white70,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           letterSpacing: 1),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 5),
//             SizedBox(
//               height: 300,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(8),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         InkWell(
//                           onTap: () {},
//                           child: ClipRRect(
//                             borderRadius: BorderRadiusDirectional.circular(15),
//                             child: Image.asset(
//                               "assets/images/${movies2[index]}.jpg",
//                               height: 250,
//                               fit: BoxFit.cover,
//                               width: 180,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Padding(
//                           padding: EdgeInsets.only(left: 8),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 movies[index],
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

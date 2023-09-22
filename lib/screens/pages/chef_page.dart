import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mloflow/screens/Widgets/dialogbox.dart';
import 'package:mloflow/screens/main_screen/main_screen.dart';
import 'package:mloflow/screens/pages/chef_booking_page.dart';
import 'package:mloflow/screens/pages/chef_details_page.dart';

class Chef_Page extends StatefulWidget {
  const Chef_Page({Key? key}) : super(key: key);
  @override
  State<Chef_Page> createState() => _Chef_PageState();
}

class _Chef_PageState extends State<Chef_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFEDECF2),
            leading: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                );
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black26,
              ),
            ),
          ),
          body: Container(
            child: GridView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/chef4.png",
                              height: 100,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Alex John",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.location_on),
                              Text("Nairobi"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Speciality:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Sea Food",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 4),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 225, 165, 11),
                              ),
                              onRatingUpdate: (index) {},
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Status: "),
                              Text(
                                "Available",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(fontSize: 10),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 20),
                                  primary: Color(0xFFFBC24A),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Homepage4()),
                                  );
                                },
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(70, 20),
                                  primary: Colors.white70,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chef_Details_Page()),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/chef4.png",
                              height: 100,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Alex John",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.location_on),
                              Text("Nairobi"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Speciality:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Sea Food",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 4),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 225, 165, 11),
                              ),
                              onRatingUpdate: (index) {},
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Status: "),
                              Text(
                                "UnAvailable",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(fontSize: 10),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 20),
                                  primary: Color(0xFFFBC24A),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyForm()),
                                  );
                                },
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(70, 20),
                                  primary: Colors.white70,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chef_Details_Page()),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/chef2.png",
                              height: 100,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Alex John",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.location_on),
                              Text("Nairobi"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Speciality:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Sea Food",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 4),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 225, 165, 11),
                              ),
                              onRatingUpdate: (index) {},
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Status: "),
                              Text(
                                "Available",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(fontSize: 10),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 20),
                                  primary: Color(0xFFFBC24A),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyForm()),
                                  );
                                },
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(70, 20),
                                  primary: Colors.white70,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chef_Details_Page()),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/chef2.png",
                              height: 100,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Alex John",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.location_on),
                              Text("Nairobi"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Speciality:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Sea Food",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 4),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 225, 165, 11),
                              ),
                              onRatingUpdate: (index) {},
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Status: "),
                              Text(
                                "Available",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(fontSize: 10),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 20),
                                  primary: Color(0xFFFBC24A),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyForm()),
                                  );
                                },
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(70, 20),
                                  primary: Colors.white70,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chef_Details_Page()),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/chef5.png",
                              height: 100,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Alex John",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.location_on),
                              Text("Nairobi"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Speciality:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Sea Food",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 4),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 225, 165, 11),
                              ),
                              onRatingUpdate: (index) {},
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Status: "),
                              Text(
                                "Available",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(fontSize: 10),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 20),
                                  primary: Color(0xFFFBC24A),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyForm()),
                                  );
                                },
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(70, 20),
                                  primary: Colors.white70,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chef_Details_Page()),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/chef5.png",
                              height: 100,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Alex John",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.location_on),
                              Text("Nairobi"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Speciality:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Sea Food",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 4),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 225, 165, 11),
                              ),
                              onRatingUpdate: (index) {},
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Status: "),
                              Text(
                                "Available",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(fontSize: 10),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 20),
                                  primary: Color(0xFFFBC24A),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyForm()),
                                  );
                                },
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(70, 20),
                                  primary: Colors.white70,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chef_Details_Page()),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5,
                  mainAxisExtent: 300),
            ),
          )),
      // home: Scaffold(
      //   backgroundColor: Color(0xFFF5F5F3),
      //   body: Center(
      //     child: Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.circular(15),
      //         boxShadow: [
      //           BoxShadow(
      //               color: Colors.grey.withOpacity(0.5),
      //               spreadRadius: 3,
      //               blurRadius: 10,
      //               offset: Offset(0, 3)),
      //         ],
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Container(
      //               child: Image.asset(
      //                 "assets/images/chef1.png",
      //                 height: 150,
      //               ),
      //             ),
      //             Text(
      //               "hot Buuger",
      //               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(height: 4),
      //             Text(
      //               "Taste Our Hot Burger",
      //               style: TextStyle(
      //                 fontSize: 16,
      //               ),
      //             ),
      //             SizedBox(height: 6),
      //             RatingBar.builder(
      //               initialRating: 4,
      //               minRating: 1,
      //               direction: Axis.horizontal,
      //               itemCount: 5,
      //               itemSize: 16,
      //               itemPadding: EdgeInsets.symmetric(horizontal: 4),
      //               itemBuilder: (context, _) => Icon(
      //                 Icons.star,
      //                 color: Colors.yellow,
      //               ),
      //               onRatingUpdate: (index) {},
      //             ),
      //             SizedBox(height: 6),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ElevatedButton(
      //                   child: Text('Book Now'),
      //                   style: ElevatedButton.styleFrom(
      //                     primary: Colors.green,
      //                   ),
      //                   onPressed: () {},
      //                 ),
      //                 ElevatedButton(
      //                   child: Text('Details >>'),
      //                   style: ElevatedButton.styleFrom(
      //                     primary: Colors.green,
      //                   ),
      //                   onPressed: () {},
      //                 ),
      //               ],
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

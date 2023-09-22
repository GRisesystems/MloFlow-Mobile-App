import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mloflow/screens/Widgets/button.dart';
import 'package:mloflow/screens/pages/chef_booking_page.dart';

class Menu_Page extends StatelessWidget {
  const Menu_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                Container(
                  height: 110,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 3,
                            blurRadius: 15)
                      ]),
                  child: Row(
                    children: [
                      
                      // Radio(
                      //     value: "",
                      //     groupValue: "",
                      //     activeColor: Color(0xFFFBC24A),
                      //     onChanged: (index) {}),
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(right: 15),
                        child: Image.asset("assets/images/plate.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Russian Crocodile",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            // Icon(Icons.location_pin),
                            Text(
                              "Sea food",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700]),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 12,
                                ),
                                Text(
                                  'Nairobi',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  "\Ksh 1200/=",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 200, 101, 30)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color(0xFFFBC24A),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 3,
                            blurRadius: 15)
                      ]),
                  child: Row(
                    children: [
                      Radio(
                          value: "",
                          groupValue: "",
                          activeColor: Color.fromARGB(255, 11, 151, 53),
                          onChanged: (index) {}),
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(right: 15),
                        child: Image.asset("assets/images/plate.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Russian Crocodile",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            // Icon(Icons.location_pin),
                            Text(
                              "Sea Food",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700]),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 12,
                                ),
                                Text(
                                  'Nairobi',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\Ksh 1200/=",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),

                                // Icon(Icons.location_pin),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color(0xFFFBC24A),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 3,
                            blurRadius: 15)
                      ]),
                  child: Row(
                    children: [
                      Radio(
                          value: "",
                          groupValue: "",
                          activeColor: Color.fromARGB(255, 11, 151, 53),
                          onChanged: (index) {}),
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(right: 15),
                        child: Image.asset("assets/images/plate.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Russian Crocodile",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            // Icon(Icons.location_pin),
                            Text(
                              "sea food",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700]),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 12,
                                ),
                                Text(
                                  'Nairobi',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\Ksh 1200/=",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),

                                // Icon(Icons.location_pin),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color(0xFFFBC24A),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 3,
                            blurRadius: 15)
                      ]),
                  child: Row(
                    children: [
                      Radio(
                          value: "",
                          groupValue: "",
                          activeColor: Color.fromARGB(255, 11, 151, 53),
                          onChanged: (index) {}),
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(right: 15),
                        child: Image.asset("assets/images/plate.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Russian Crocodile",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            // Icon(Icons.location_pin),
                            Text(
                              "Sea Food",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700]),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 12,
                                ),
                                Text(
                                  'Nairobi',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\Ksh 1200/=",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 200, 101, 30)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color(0xFFFBC24A),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 3,
                            blurRadius: 15)
                      ]),
                  child: Row(
                    children: [
                      Radio(
                          value: "",
                          groupValue: "",
                          activeColor: Color.fromARGB(255, 11, 151, 53),
                          onChanged: (index) {}),
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(right: 15),
                        child: Image.asset("assets/images/plate.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Russian Crocodile",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            // Icon(Icons.location_pin),
                            Text(
                              "Sea food",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700]),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 12,
                                ),
                                Text(
                                  'Nairobi',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\Ksh 1200/=",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 200, 101, 30)),
                                ),

                                // Icon(Icons.location_pin),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color(0xFFFBC24A),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Chef_Details_Page extends StatelessWidget {
  const Chef_Details_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "assets/images/chef4.png",
              height: 270,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "John Alex",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  Icon(Icons.location_on),
                                  Text("Nairobi"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Speciality:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  " Sea Food",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemSize: 16,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 225, 165, 11),
                                  ),
                                  onRatingUpdate: (index) {},
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Text("Availability Status"),
                                Text(
                                  "Availabile",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: ElevatedButton(
                              child: Text(
                                'Book Now',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(150, 40),
                                primary: Color(0xFFFBC24A),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

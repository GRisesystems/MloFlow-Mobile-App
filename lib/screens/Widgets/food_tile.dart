import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mloflow/screens/Widgets/button.dart';
import 'package:mloflow/screens/Widgets/data_list.dart';

class Trending_Bar extends StatefulWidget {
  const Trending_Bar({Key? key}) : super(key: key);

  @override
  State<Trending_Bar> createState() => _Trending_BarState();
}

class _Trending_BarState extends State<Trending_Bar> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                width: 250,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/food8.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Quality Food',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.white)),
                      //redeem button
                      //const SizedBox(height: 50),
                      //MyButton(text: 'Hire Now!', onTap: () {})
                    ],
                  ),
                ),
              ),
              //2nd Image of Slider
              Container(
                width: 250,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/producefod.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fresh Produce',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.white)),
                      //redeem button
                      //const SizedBox(height: 50),
                      //MyButton(text: 'Order Now!', onTap: () {})
                    ],
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                width: 250,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/food5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fresh Foods',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.white)),
                      //redeem button
                      //const SizedBox(height: 50),
                      // MyButton(text: 'Order Now!', onTap: () {})
                    ],
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                width: 250,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/food1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Chefs For Hire',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.white)),
                      //redeem button
                      //const SizedBox(height: 50),
                      //MyButton(text: 'Hire Now!', onTap: () {})
                    ],
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                width: 250,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/food3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Qualified Chefs',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.white)),
                      //redeem button
                      //const SizedBox(height: 50),
                      //MyButton(text: 'Order Now!', onTap: () {})
                    ],
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 170.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ));
}
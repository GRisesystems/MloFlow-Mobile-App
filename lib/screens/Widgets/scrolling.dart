import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mloflow/screens/Widgets/button.dart';
import 'package:mloflow/screens/pages/chef_page.dart';

class ScrollPage extends StatefulWidget {
  const ScrollPage({Key? key}) : super(key: key);

  @override
  State<ScrollPage> createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/chef6.png'),
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
                              fontSize: 20, color: Colors.black)),
                      //redeem button
                      //const SizedBox(height: 50),
                      MyButton(
                        text: 'Hire Now',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Chef_Page()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/food-delivery.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Food Delivery',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.black)),
                      //redeem button
                      //const SizedBox(height: 50),
                      MyButton(text: 'Shop Now', onTap: () {})
                    ],
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/food6.jpg'),
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
                              fontSize: 20, color: Colors.black)),
                      //redeem button
                      //const SizedBox(height: 50),
                      MyButton(text: 'Shop Now', onTap: () {})
                    ],
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/poultry.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Poultry',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.black)),
                      //redeem button
                      //const SizedBox(height: 50),
                      MyButton(text: 'Shop Now', onTap: () {})
                    ],
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/fish.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fish',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20, color: Colors.black)),
                      //redeem button
                      //const SizedBox(height: 50),
                      MyButton(text: 'Shop Now', onTap: () {})
                    ],
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              //autoPlay: true,
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


//  'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
            // 'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
            // 'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
            // 'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg'




          
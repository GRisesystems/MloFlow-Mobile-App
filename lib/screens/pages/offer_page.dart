import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Offer_page extends StatelessWidget {
  const Offer_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
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
      body: Center(
        child: Lottie.network(
            'https://lottie.host/022ddd0a-f569-46d4-98ab-a1c87eed7776/4zT0FAw49F.json'),
      ),
    );
  }
}

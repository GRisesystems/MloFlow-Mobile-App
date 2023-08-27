import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: WelcomePage()
      ),
    );
  }
}



class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 190,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "Welcome to MloFlow!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/welcomeFruit.jpg'),
          ),
          Container(
            width: 190,
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "Kenya's Exclusive One-Stop Shop for All things Food!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0)
            ),
            child: const Text("Next"),
          )
        ],
      ),
    );
  }
}




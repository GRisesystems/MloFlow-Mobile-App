import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen5(),
    );
  }
}

class HomeScreen5 extends StatefulWidget {
  @override
  _HomeScreen5State createState() => _HomeScreen5State();
}

class _HomeScreen5State extends State<HomeScreen5> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 45,
      child: Switch(
        activeColor: Colors.greenAccent,
        value: status,
        onChanged: (value) {
          print("VALUE : $value");
          setState(() {
            status = value;
          });
        },
      ),
    );
  }
}

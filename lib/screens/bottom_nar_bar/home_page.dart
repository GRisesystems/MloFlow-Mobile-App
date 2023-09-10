import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Home Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipOval(
            child: AspectRatio(aspectRatio: 1),
          ),
          Text('Home Page')
        ]),
      ),
    );
  }
}

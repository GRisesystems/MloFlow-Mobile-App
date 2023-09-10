import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Profile Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipOval(
            child: AspectRatio(aspectRatio: 1),
          ),
          Text('Profile Page')
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Drawer_Page extends StatefulWidget {
  const Drawer_Page({Key? key}) : super(key: key);

  @override
  State<Drawer_Page> createState() => _Drawer_PageState();
}

class _Drawer_PageState extends State<Drawer_Page> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFFBC24A)),
            accountName: Text(
              "Alex John",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "Alex.John@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Icon(
                Icons.face,
                size: 48,
                color: Colors.yellow,
              )),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Manage account'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train,
            ),
            title: const Text('Setings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train,
            ),
            title: const Text('Give Feedback'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          AboutListTile(
            // <-- SEE HERE
            icon: Icon(
              Icons.info,
            ),
            child: Text('About app'),
            applicationIcon: Icon(
              Icons.local_play,
            ),
            applicationName: 'My Cool App',
            applicationVersion: '1.0.25',
            applicationLegalese: '© 2023 Company',
            aboutBoxChildren: [
              ///Content goes here...
            ],
          ),
        ],
      ),
    );
  }
}

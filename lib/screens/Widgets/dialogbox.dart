import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mloflow/screens/pages/chef_booking_page.dart';
import 'package:mloflow/screens/tabs_pages/chef_favorite_page.dart';

class Homepage4 extends StatelessWidget {
  const Homepage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("Success"),
      actions: [
        CupertinoDialogAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Back")),
        CupertinoDialogAction(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyForm()),
              );
            },
            child: Text("Next")),
      ],
      content: Text("Terms And Conditions"),
    );
  }
}

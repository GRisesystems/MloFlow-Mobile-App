import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
// Initial Selected Value

// List of items in our dropdown menu
  String selectedCategory = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.0,
            style: BorderStyle.solid,
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
      child: DropdownButton<String>(
        items: <String>[
          'Wedding',
          'Birthday',
          ' Dinner',
          'Anniversary',
          'Baby Shower'
        ].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        hint: Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 10),
          child: Text(
            selectedCategory.isEmpty ? ' Select any' : selectedCategory,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
          ),
        ),
        borderRadius: BorderRadius.circular(10),
        underline: SizedBox(),
        isExpanded: true,
        onChanged: (value) {
          if (value != null) {
            setState(() {
              selectedCategory = value;
            });
          }
        },
      ),
    );
  }
}

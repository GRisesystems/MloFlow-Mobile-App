import 'package:flutter/material.dart';

class MyButton1 extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton1({
    required this.text,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 154, 10),
            borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: Colors.white)),
            const SizedBox(width: 8),
            //icon
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

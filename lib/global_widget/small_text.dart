import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  const SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    this.height = 1.2,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontFamily: 'Roboto', fontSize: size, height: height),
    );
  }
}

import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow overFlow;
  BigText(
      {super.key,
      this.color = const Color(0xFF332d2b),
      this.size = 0,
      required this.text,
      this.overFlow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto',
          fontSize: size == 0 ? 20 : size),
    );
  }
}

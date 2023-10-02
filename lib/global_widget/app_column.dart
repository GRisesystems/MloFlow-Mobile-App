import 'package:flutter/material.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/global_widget/big_text.dart';
import 'package:mloflow/global_widget/icon_and_text.dart';
import 'package:mloflow/global_widget/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: 20,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: kPrimaryColor,
                        size: 12,
                      )),
            ),
            const SizedBox(
              width: 5,
            ),
            SmallText(text: "4.5"),
            const SizedBox(
              width: 5,
            ),
            SmallText(text: "1267"),
            const SizedBox(
              width: 5,
            ),
            SmallText(text: 'comments')
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: kIconColor),
            IconAndText(
                icon: Icons.location_on,
                text: '1.7km',
                iconColor: kPrimaryColor),
            IconAndText(
                icon: Icons.access_time_filled_rounded,
                text: '32min',
                iconColor: kIconColor)
          ],
        ),
      ],
    );
  }
}

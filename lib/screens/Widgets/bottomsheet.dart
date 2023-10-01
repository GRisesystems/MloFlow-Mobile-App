import 'package:flutter/material.dart';
import 'package:mloflow/screens/Widgets/textfield_bootomsheet.dart';

class BottomSheeter extends StatefulWidget {
  const BottomSheeter({Key? key}) : super(key: key);

  @override
  State<BottomSheeter> createState() => _BottomSheeterState();
}

class _BottomSheeterState extends State<BottomSheeter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 400,
                    child: Home1(),
                  );
                });
          },
          child: Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    //topRight: Radius.circular(30),
                    ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 3,
                      blurRadius: 15)
                ]),
            child: Row(
              children: [
                Radio(
                    value: "",
                    groupValue: "",
                    activeColor: Color.fromARGB(255, 23, 168, 15),
                    onChanged: (index) {}),
                Container(
                  height: 70,
                  width: 80,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("assets/images/mpesa.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pay via M-Pesa",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),

                      // Icon(Icons.location_pin),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

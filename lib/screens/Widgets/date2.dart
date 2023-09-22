import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date1 extends StatefulWidget {
  const Date1({Key? key}) : super(key: key);

  @override
  State<Date1> createState() => _Date1State();
}

class _Date1State extends State<Date1> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: dateinput, //editing controller of this TextField

      decoration: InputDecoration(
        icon: Icon(Icons.calendar_today),
        labelText: "Enter Date",
        contentPadding: EdgeInsets.fromLTRB(15.0, 8.0, 18.0, 12.0),
      ),
      style: TextStyle(fontSize: 18),
      //icon of text field

      //label text of field

      readOnly: true, //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(
                2000), //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2101));

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          print(
              formattedDate); //formatted date output using intl package =>  2021-03-16
          //you can implement different kind of Date Format here according to your requirement

          setState(() {
            dateinput.text =
                formattedDate; //set output date to TextField value.
          });
        } else {
          print("Date is not selected");
        }
      },
    );
  }
}

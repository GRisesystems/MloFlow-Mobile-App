import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  final formKey = GlobalKey<FormState>(); //key for form
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey, //key for form
          child: Column(
            children: [
              TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                // controller: _textField8Controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.smartphone),
                  prefixText: '+254',
                  labelText: 'Phone Number',
                  contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                ),
                style: TextStyle(fontSize: 18),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                          .hasMatch(value)) {
                    //  r'^[0-9]{10}$' pattern plain match number with length 10
                    return "Enter Correct Phone Number";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                maxLength: 8,
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                //controller: _textField8Controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.money),
                  labelText: 'Enter Amount',
                  contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                ),
                style: TextStyle(fontSize: 18),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                          .hasMatch(value)) {
                    //  r'^[0-9]{10}$' pattern plain match number with length 10
                    return "Enter Correct Amount";
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      //check if form data are valid,
                      // your process task ahed if all data are valid
                    }
                  },
                  child: Text("Submit Data"))
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

/// This is a implementation of the Country State City Picker.

class MyHomePagef extends StatefulWidget {
  MyHomePagef({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePagefState createState() => _MyHomePagefState();
}

class _MyHomePagefState extends State<MyHomePagef> {
  /// Variables to store country state city data in onChanged method.
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  @override
  Widget build(BuildContext context) {
    GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();
    final _formKey = GlobalKey<FormState>();

    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.person),
            hintText: 'Enter your full name',
            labelText: 'First Name',
            contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
          ),
          style: TextStyle(fontSize: 18),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.person),
            hintText: 'Enter your full name',
            labelText: 'Last Name',
            contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
          ),
          style: TextStyle(fontSize: 18),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.home),
            hintText: 'Enter your Address 1',
            labelText: 'Address 1',
            contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
          ),
          style: TextStyle(fontSize: 18),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter valid Address';
            }
            return null;
          },
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.home),
            hintText: 'Enter your Address 2',
            labelText: 'Address 2',
            contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
          ),
          style: TextStyle(fontSize: 18),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter valid Address';
            }
            return null;
          },
        ),
        SizedBox(height: 5),

        SizedBox(height: 5),

        SizedBox(height: 5),

        ///Adding CSC Picker Widget in app
        CSCPicker(
          ///Enable disable state dropdown [OPTIONAL PARAMETER]
          showStates: true,

          /// Enable disable city drop down [OPTIONAL PARAMETER]
          showCities: true,

          ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
          flagState: CountryFlag.DISABLE,

          ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
          dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300, width: 1)),

          ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
          disabledDropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade300,
              border: Border.all(color: Colors.grey.shade300, width: 1)),

          ///placeholders for dropdown search field
          countrySearchPlaceholder: "Country",
          stateSearchPlaceholder: "State",
          citySearchPlaceholder: "City",

          ///labels for dropdown
          countryDropdownLabel: "*Country",
          stateDropdownLabel: "*State",
          cityDropdownLabel: "*City",

          ///Default Country
          //defaultCountry: DefaultCountry.India,

          ///Disable country dropdown (Note: use it with default country)
          //disableCountry: true,

          ///selected item style [OPTIONAL PARAMETER]
          selectedItemStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),

          ///DropdownDialog Heading style [OPTIONAL PARAMETER]
          dropdownHeadingStyle: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),

          ///DropdownDialog Item style [OPTIONAL PARAMETER]
          dropdownItemStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),

          ///Dialog box radius [OPTIONAL PARAMETER]
          dropdownDialogRadius: 10.0,

          ///Search bar radius [OPTIONAL PARAMETER]
          searchBarRadius: 10.0,

          ///triggers once country selected in dropdown
          onCountryChanged: (value) {
            setState(() {
              ///store value in country variable
              countryValue = value;
            });
          },

          ///triggers once state selected in dropdown
          onStateChanged: (value) {
            setState(() {
              ///store value in state variable
              stateValue = countryValue;
            });
          },

          ///triggers once city selected in dropdown
          onCityChanged: (value) {
            setState(() {
              ///store value in city variable
              cityValue = cityValue;
            });
          },
        ),

        ///print newly selected country state and city in Text Widget
        TextButton(
            onPressed: () {
              setState(() {
                address = "$cityValue, $stateValue, $countryValue";
              });
            },
            child: Text("Print Data")),
        Text(address)
      ],
    );
  }
}

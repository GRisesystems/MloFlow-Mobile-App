import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mloflow/screens/Widgets/date.dart';
import 'package:mloflow/screens/Widgets/dropdown.dart';
import 'package:mloflow/screens/pages/chef_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textField1Controller = TextEditingController();
  TextEditingController _textField2Controller = TextEditingController();
  TextEditingController _textField3Controller = TextEditingController();
  TextEditingController _textField4Controller = TextEditingController();
  TextEditingController _textField5Controller = TextEditingController();
  TextEditingController _textField6Controller = TextEditingController();
  TextEditingController _textField7Controller = TextEditingController();
  TextEditingController _textField8Controller = TextEditingController();
  TextEditingController _textField9Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEDECF2),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Chef_Page()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black26,
          ),
        ),
        title: Text(
          'Request Form',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: _textField1Controller,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                    ),
                    style: TextStyle(fontSize: 18),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: _textField2Controller,
                    decoration: InputDecoration(
                      labelText: 'Surname',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                    ),
                    style: TextStyle(fontSize: 18),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: _textField3Controller,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                    ),
                    style: TextStyle(fontSize: 18),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: _textField4Controller,
                    decoration: InputDecoration(
                      labelText: 'Speciality',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                    ),
                    style: TextStyle(fontSize: 18),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: MyHomePage2(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: _textField6Controller,
                    decoration: InputDecoration(
                      labelText: 'Location',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                    ),
                    style: TextStyle(fontSize: 18),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 5, bottom: 5),
                  child: HomePage1(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: _textField8Controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.smartphone),
                      prefixText: '+254',
                      labelText: 'Phone Number',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                    ),
                    style: TextStyle(fontSize: 18),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    maxLength: 5,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: _textField9Controller,
                    decoration: InputDecoration(
                      labelText: 'Number of people',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                    ),
                    style: TextStyle(fontSize: 18),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 10),
                    primary: Color(0xFFFBC24A),
                    textStyle: const TextStyle(
                        fontSize: 10, fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, you can process the data here
                      String textField1Value = _textField1Controller.text;
                      String textField2Value = _textField2Controller.text;
                      String textField3Value = _textField3Controller.text;
                      String textField4Value = _textField4Controller.text;
                      String textField5Value = _textField5Controller.text;
                      String textField6Value = _textField6Controller.text;
                      String textField7Value = _textField7Controller.text;
                      String textField8Value = _textField8Controller.text;
                      String textField9Value = _textField9Controller.text;
                      // Perform your desired action with the data
                      print('Text Field 1: $textField1Value');
                      print('Text Field 2: $textField2Value');
                      print('Text Field 3: $textField3Value');
                      print('Text Field 4: $textField4Value');
                      print('Text Field 5: $textField5Value');
                      print('Text Field 6: $textField6Value');
                      print('Text Field 7: $textField7Value');
                      print('Text Field 8: $textField8Value');
                      print('Text Field 9: $textField9Value');
                    }
                  },
                  child: Text(
                    'REQUEST',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textField1Controller.dispose();
    _textField2Controller.dispose();
    _textField3Controller.dispose();
    _textField4Controller.dispose();
    _textField5Controller.dispose();
    _textField6Controller.dispose();
    _textField7Controller.dispose();
    _textField8Controller.dispose();
    _textField9Controller.dispose();

    super.dispose();
  }
}

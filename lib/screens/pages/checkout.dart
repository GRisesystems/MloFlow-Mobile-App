import 'package:flutter/material.dart';
import 'package:mloflow/screens/main_screen/main_screen.dart';

class Check_Out extends StatefulWidget {
  const Check_Out({Key? key}) : super(key: key);

  @override
  State<Check_Out> createState() => _Check_OutState();
}

class _Check_OutState extends State<Check_Out> {
  int currentStep = 0;

  final firstName = TextEditingController();

  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Column(
            children: [
              Text('Shopping'),
              Text('Address'),
            ],
          ),
          content: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        controller: firstName,
                        decoration: InputDecoration(
                          labelText: 'First name',
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5, right: 2, top: 2, bottom: 2),
                      child: TextFormField(
                        controller: firstName,
                        decoration: InputDecoration(
                          labelText: 'Last name',
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 8.0),
                        ),
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: firstName,
                decoration: InputDecoration(
                  labelText: 'Address line 1',
                  contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 8.0),
                ),
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: firstName,
                decoration: InputDecoration(
                  labelText: 'Address line 2',
                  contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 8.0),
                ),
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        controller: firstName,
                        decoration: InputDecoration(
                          labelText: 'City',
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5, right: 2, top: 2, bottom: 2),
                      child: TextFormField(
                        controller: firstName,
                        decoration: InputDecoration(
                          labelText: 'State/Province/Region',
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 8.0),
                        ),
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        controller: firstName,
                        decoration: InputDecoration(
                          labelText: 'Zip/Postal code',
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5, right: 2, top: 2, bottom: 2),
                      child: TextFormField(
                        controller: firstName,
                        decoration: InputDecoration(
                          labelText: 'Country',
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 8.0),
                        ),
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Column(
              children: [
                Text('Payment'),
                Text('Details'),
              ],
            ),
            content: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          controller: firstName,
                          decoration: InputDecoration(
                            labelText: 'Card Name',
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                          ),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 2, top: 2, bottom: 2),
                        child: TextFormField(
                          controller: firstName,
                          decoration: InputDecoration(
                            labelText: 'Card Number',
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 8.0),
                          ),
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          controller: firstName,
                          decoration: InputDecoration(
                            labelText: 'Expiry date',
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 12.0, 20.0, 10.0),
                          ),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 2, top: 2, bottom: 2),
                        child: TextFormField(
                          controller: firstName,
                          decoration: InputDecoration(
                            labelText: 'CVV',
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 8.0),
                          ),
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Step(
          isActive: currentStep >= 2,
          title: Column(
            children: [
              Text('Review'),
              Text('Your order'),
            ],
          ),
          content: Column(),
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEDECF2),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
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
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
          primary: Color(0xFFFBC24A),
        )),
        child: Stepper(
          type: StepperType.horizontal,
          steps: getSteps(),
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
              print('Complete');

              ///send data to server
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepTapped: (step) => setState(() => currentStep = step),
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
          controlsBuilder: (context, ControlsDetails details) {
            return Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    child: Text(
                      'NEXT ${details.stepIndex + 1}',
                    ),
                    onPressed: details.onStepContinue,
                  )),
                  const SizedBox(width: 12),
                  Expanded(
                      child: ElevatedButton(
                    child: Text('BACK ${details.stepIndex - 1}'),
                    onPressed: details.onStepCancel,
                  )),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


  //  return Container(
  //             margin: EdgeInsets.only(top: 50),
  //             child: Row(
  //               children: [
  //                 Expanded(child: ElevatedButton(child: Text('NEXT'),
  //                 onPressed: onStepContinue,
  //                 )),
  //                 const SizedBox(width: 12),
  //                  Expanded(child: ElevatedButton(child: Text('BACK'),
  //                 onPressed: onStepCancel,
  //                 )),
  //               ],
  //             ),
  //           );
import 'package:flutter/material.dart';
import 'package:mloflow/screens/Widgets/bottomsheet.dart';
import 'package:mloflow/screens/Widgets/payment_details.dart';
import 'package:mloflow/screens/main_screen/main_screen.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int currentStep = 0;

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
          content: MyHomePagef(),
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
          content: BottomSheeter(),
        ),
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
          'CheckOut',
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
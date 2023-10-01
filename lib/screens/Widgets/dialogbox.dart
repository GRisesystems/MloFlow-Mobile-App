import 'package:flutter/material.dart';
import 'package:mloflow/screens/main_screen/main_screen.dart';
import 'package:mloflow/screens/pages/chef_booking_page.dart';
import 'package:mloflow/screens/pages/chef_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      home: MyHomePage4(),
    );
  }
}

class MyHomePage4 extends StatefulWidget {
  const MyHomePage4({Key? key}) : super(key: key);

  @override
  State<MyHomePage4> createState() => _MyHomePage4State();
}

class _MyHomePage4State extends State<MyHomePage4> {
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  // This function is triggered when the button is clicked
  void _doSomething() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyForm()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms and Conditions',
          style: TextStyle(color: Colors.grey[700]),
        ),
        backgroundColor: Color(0xFFEDECF2),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chef_Page()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: const Color.fromARGB(66, 72, 71, 71),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                child: ListView(
              children: [
                Text(
                  "Chef Selection Assurance",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                    " If the selected chef declines your request, MloFlow guarantees to promptly assign another high-quality chef to provide the service you expect, ensuring excellence in every culinary experience."),
                SizedBox(height: 5),
                Text(
                  "Notification of Chef Assignment",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                    " Upon reassignment as per Clause 1, MloFlow will send you a confirmation email within 3 hours to inform you of the newly assigned chef."),
                SizedBox(height: 5),
                Text(
                  "Payment Process",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                    "Once you receive the confirmation email, you are required to make the payment as specified. Upon successful payment confirmation, the chef will be scheduled to arrive at your location."),
                SizedBox(height: 5),
                Text(
                  "Cancellation Window",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                    " In the event that you do not receive any notifications from MloFlow within 3 hours of the initial request, you have the option to cancel the booking."),
                SizedBox(height: 5),
                Text(
                  "Cancellation Refund Policy",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                    "If you choose to cancel the booking after making the payment, MloFlow will refund 80% of the total amount charged for the chef service, retaining the remaining 20% as processing fees."),
                SizedBox(height: 5),
                Text(
                    "By proceeding, you agree to these terms and conditions for chef bookings with MloFlow. It is recommended to review this agreement before finalizing your booking. If you have any questions or concerns, please contact our support team for assistance."),
                SizedBox(height: 10),
                Row(
                  children: [
                    Material(
                      child: Checkbox(
                        activeColor: Color(0xFFFBC24A),
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                    ),
                    const Text(
                      'I have read and accept terms and conditions',
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFBC24A),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: agree ? _doSomething : null,
                    child: const Text('Continue'))
              ],
            )),
          ]),
        ),
      ),
    );
  }
}

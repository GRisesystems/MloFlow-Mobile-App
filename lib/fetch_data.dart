import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KindaCodeDemo extends StatefulWidget {
  const KindaCodeDemo({Key? key}) : super(key: key);

  @override
  State<KindaCodeDemo> createState() => _KindaCodeDemoState();
}

class _KindaCodeDemoState extends State<KindaCodeDemo> {
  // Initialize an instance of GetConnect
  final _connect = GetConnect();

  // send Get request
  // and get the response
  void _sendGetRequest() async {
    final response = await _connect.get('http://127.0.0.1:8000/products/');

    if (kDebugMode) {
      print(response.body);
    }
  }

  // send Post request
  // You can somehow trigger this function, for example, when the user clicks on a button
  void _sendPostRequest() async {
    final response = await _connect.post(
      'https://jsonplaceholder.typicode.com/posts',
      {
        'title': 'one two three',
        'body': 'four five six seven',
        'userId': 1,
      },
    );

    if (kDebugMode) {
      print(response.body);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sendGetRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KindaCode.com')),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: _sendGetRequest,
                child: const Text('Send GET Request')),
            ElevatedButton(
                onPressed: _sendPostRequest,
                child: const Text('Send POST Request')),
          ],
        ),
      ),
    );
  }
}

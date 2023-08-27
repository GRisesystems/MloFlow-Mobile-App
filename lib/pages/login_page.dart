import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                "Let's get started",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'E-mail',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38)
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
                height: 35,
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                  child: const Text('Login'),
                  onPressed: () {},
                )
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                "or",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
                height: 35,
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100]),
                  child: const Text('Continue with', style: TextStyle(color: Colors.black38),),
                  onPressed: () {},
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Don\'t have a account?'),
                TextButton(
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontSize: 15, color: Colors.orangeAccent),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
          ],
        )
    );
  }
}
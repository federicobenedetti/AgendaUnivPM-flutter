import 'package:agendaunivpm_f/screens/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agenda UnivPM"),
      ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: ColoredBox(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const SizedBox(height: 50),
                      Image.asset(
                        "images/univpm.png",
                        width: 200,
                      ),
                      const SizedBox(height: 30),
                      const Text("Agenda UnivPM",
                          style:
                          TextStyle(
                            fontSize: 22,
                            color: Colors.black
                          )
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/dettagliolezione');
                          },
                          icon: const Icon(Icons.android),
                          label: const Text("Accedi")
                      ),
                      const Spacer(),
                      const Text(
                          'All rights reserved - Copyright Federico Benedetti',
                          style:
                          TextStyle(
                              fontSize: 15,
                              color: Colors.black
                          )
                      ),
                      const SizedBox(height: 20)
                    ],
                  )
              )
          ),
        )
    ); // Scaffold
  }
}
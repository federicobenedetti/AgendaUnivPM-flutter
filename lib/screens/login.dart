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
        title: Text("Agenda UnivPM"),
      ),
        body: Center(
            child: ColoredBox(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Image.asset(
                      "images/univpm.png",
                      width: 200,
                    ),
                    SizedBox(height: 30),
                    Text("Agenda UnivPM",
                        style:
                        TextStyle(
                          fontSize: 22,
                          color: Colors.black
                        )
                    ),
                    SizedBox(height: 50),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.android),
                        label: Text("Accedi")
                    ),
                    Spacer(),
                    Text(
                        'All rights reserved - Copyright Federico Benedetti',
                        style:
                        TextStyle(
                            fontSize: 15,
                            color: Colors.black
                        )
                    ),
                    SizedBox(height: 20)
                  ],
                )
            )
        )
    ); // Scaffold
  }
}
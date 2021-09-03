import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  Faq({Key? key}) : super(key: key);
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Container(
              child: Text("FAQ",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: Colors.black)),
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    ); // Scaffold
  }
}

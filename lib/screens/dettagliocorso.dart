import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DettaglioCorso extends StatefulWidget {
  DettaglioCorso({Key? key}) : super(key: key);
  @override
  _DettaglioCorsoState createState() => _DettaglioCorsoState();
}

class _DettaglioCorsoState extends State<DettaglioCorso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda UnivPM"),
      ),
      body: Padding(
      padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[

          ],
        ),
      )
    ); // Scaffold
  }
}
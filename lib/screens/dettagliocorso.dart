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
          title: const Text("Agenda UnivPM"),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text("Programmazione Mobile",
                  style: TextStyle(fontSize: 22, color: Colors.black)),
              const SizedBox(height: 10),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tincidunt feugiat nunc maximus pulvinar. Duis erat eros, tincidunt et pulvinar laoreet, interdum eu risus. In dapibus eleifend ligula et ullamcorper. Morbi et tincidunt sem. Vestibulum ut facilisis turpis. Vivamus ultricies bibendum sagittis."),
              const Spacer(),
              ElevatedButton(
                child: const Text("DISISCRIVITI DAL CORSO"),
                onPressed: () {},
              ),
              ElevatedButton(
                child: const Text("ISCRIVITI AL CORSO"),
                onPressed: () {},
              )
            ],
          ),
        )); // Scaffold
  }
}

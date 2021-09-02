import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamingLezione extends StatefulWidget {
  StreamingLezione({Key? key}) : super(key: key);
  @override
  _StreamingLezioneState createState() => _StreamingLezioneState();
}

class _StreamingLezioneState extends State<StreamingLezione> {
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
              const Text(
                  "Streaming lezione",
                  style:
                  TextStyle(
                      fontSize: 22,
                      color: Colors.black
                  )
              ),
              const SizedBox(height: 10),
              const Text(
                "Verrà ora riprodotta automaticamente la lezione selezionata. I controlli a schermo non sono (ancora) disponibili."
              ),
              const SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 70,
                  minHeight: 200,
                  maxWidth: 150,
                  maxHeight: 200,
                ),
                child: Container(color: Colors.black, width: 10, height: 10),
              )
            ],
          ),

        )
    ); // Scaffold
  }
}
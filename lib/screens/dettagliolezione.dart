import 'package:agendaunivpm_f/screens/dettagliocorso.dart';
import 'package:agendaunivpm_f/screens/streaminglezione.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DettaglioLezione extends StatefulWidget {
  DettaglioLezione({Key? key}) : super(key: key);
  @override
  _DettaglioLezioneState createState() => _DettaglioLezioneState();
}

class _DettaglioLezioneState extends State<DettaglioLezione> {
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
                  "Tecnologie Web",
                  style:
                  TextStyle(
                      fontSize: 22,
                      color: Colors.black
                  )
              ),
              const SizedBox(height: 10),
              const Text(
                "Tenuta da Luca Verdi alle ore 09:30",
                style:
                  TextStyle(
                    fontSize: 13
                  )
              ),
              const SizedBox(height: 10),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tincidunt feugiat nunc maximus pulvinar. Duis erat eros, tincidunt et pulvinar laoreet, interdum eu risus. In dapibus eleifend ligula et ullamcorper. Morbi et tincidunt sem. Vestibulum ut facilisis turpis. Vivamus ultricies bibendum sagittis."
              ),
              const Spacer(),
              ElevatedButton(
                child: const Text("Vai al corso"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DettaglioCorso()),
                  );
                },
              ),
              ElevatedButton(
                child: const Text("Vai allo streaming"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StreamingLezione()),
                  );
                },
              )
            ],
          ),

        )
    ); // Scaffold
  }
}
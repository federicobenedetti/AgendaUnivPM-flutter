import 'package:agendaunivpm_f/screens/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendFeedback extends StatefulWidget {
  SendFeedback({Key? key}) : super(key: key);
  @override
  _SendFeedbackState createState() => _SendFeedbackState();
}

class _SendFeedbackState extends State<SendFeedback> {
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
                  "Feedback",
                  style:
                  const TextStyle(
                      fontSize: 22,
                      color: Colors.black
                  )
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: "Scrivi il tuo feedback qui...",
                  hintStyle: const TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 0, right: 15.0),
                        child: const Icon(Icons.info, color: Colors.grey)
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text( "Se hai trovato delle difficoltà, dei bug, delle funzionalità mancanti, o vuoi solo dirmi se ti piace o meno l'app, lascia un feedback!", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text("INVIA FEEDBACK"),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),
                  );
                },
              ),
            ],
          ),

        )
    ); /// Scaffold
  }
}
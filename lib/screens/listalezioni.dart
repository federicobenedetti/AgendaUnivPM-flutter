import 'package:agendaunivpm_f/widgets/cardlesson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaLezioni extends StatefulWidget {
  ListaLezioni({Key? key}) : super(key: key);
  @override
  _ListaLezioniState createState() => _ListaLezioniState();
}

class _ListaLezioniState extends State<ListaLezioni> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Container(
              child: Text("Lista lezioni",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: Colors.black)),
            ),
          ),
          SizedBox(height: 10),
          Text(
              "Questa sezione mostra l'elenco delle lezioni dei vari corsi a cui sei iscritto. Entrando nel dettaglio potrai accedere allo streaming della lezione."),
          SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                // Let the ListView know how many items it needs to build.
                itemCount: 10,
                // Provide a builder function. This is where the magic happens.
                // Convert each item into a widget based on the type of item it is.
                itemBuilder: (context, index) {
                  final item = CardLesson();
                  return item;
                },
              ),
            ),
          )
        ],
      ),
    ); // Scaffold
  }
}

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
    return Padding(padding: EdgeInsets.all(15.0), child: Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Container(
            child: Text(
                "Lista lezioni",
                textAlign: TextAlign.left,
                style:
                TextStyle(
                    fontSize: 22,
                    color: Colors.black
                )
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
            "Questa sezione mostra l'elenco delle lezioni dei vari corsi a cui sei iscritto. Entrando nel dettaglio potrai accedere allo streaming della lezione."
        ),
        SizedBox(height: 20),
      ],
    ),); // Scaffold
  }
}
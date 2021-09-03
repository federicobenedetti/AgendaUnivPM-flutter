import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaCorsiIscritto extends StatefulWidget {
  ListaCorsiIscritto({Key? key}) : super(key: key);
  @override
  _ListaCorsiIscrittoState createState() => _ListaCorsiIscrittoState();
}

class _ListaCorsiIscrittoState extends State<ListaCorsiIscritto> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15.0), child: Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Container(
            child: Text(
                "Corsi a cui sei iscritto",
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
            "Questa sezione mostra i corsi a cui sei attualmente iscritto. Entrando nel dettaglio del corso potrai scegliere di disiscriverti dal corso."
        ),
        SizedBox(height: 20),
      ],
    )); // Scaffold
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaCorsi extends StatefulWidget {
  ListaCorsi({Key? key}) : super(key: key);
  @override
  _ListaCorsiState createState() => _ListaCorsiState();
}

class _ListaCorsiState extends State<ListaCorsi> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text("Corsi a cui puoi iscriverti",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 22, color: Colors.black)),
              ),
            ),
            SizedBox(height: 10),
            Text(
                "Questa sezione mostra la lista di tutti i corsi disponibili a cui puoi iscriverti."),
            SizedBox(height: 20),
          ],
        )); // Scaffold
  }
}

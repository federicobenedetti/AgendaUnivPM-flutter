import 'package:agendaunivpm_f/widgets/cardcourse.dart';
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
                    final item = CardCourse();
                    return item;
                  },
                ),
              ),
            )
          ],
        )); // Scaffold
  }
}

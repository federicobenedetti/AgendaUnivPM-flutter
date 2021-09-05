import 'package:agendaunivpm_f/widgets/cardfaq.dart';
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
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text("Corsi a cui sei iscritto",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 22, color: Colors.black)),
              ),
            ),
            SizedBox(height: 10),
            Text(
                "Questa sezione mostra i corsi a cui sei attualmente iscritto. Entrando nel dettaglio del corso potrai scegliere di disiscriverti dal corso."),
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
                    final item = CardFaq();
                    return item;
                  },
                ),
              ),
            )
          ],
        )); // Scaffold
  }
}

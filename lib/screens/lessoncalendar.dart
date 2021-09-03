import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonCalendar extends StatefulWidget {
  LessonCalendar({Key? key}) : super(key: key);
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<LessonCalendar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Container(
              child: Text("Calendario",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: Colors.black)),
            ),
          ),
          SizedBox(height: 10),
          Text(
              "Utilizzando il calendario è possibile visualizzare le prossime lezioni programmate rispetto ai corsi che segui. Seleziona una data per vedere se è presente una lezione. Clicca poi la lezione per andare al dettaglio."),
          SizedBox(height: 20),
        ],
      ),
    ); // Scaffold
  }
}

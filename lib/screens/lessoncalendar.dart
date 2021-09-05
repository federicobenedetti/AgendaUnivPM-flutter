import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class LessonCalendar extends StatefulWidget {
  LessonCalendar({Key? key}) : super(key: key);
  @override
  _LessonCalendarState createState() => _LessonCalendarState();
}

class _LessonCalendarState extends State<LessonCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agenda UnivPM")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 15,
                width: 550,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.grey),
                )),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextButton(
                        child: Text("Programmazione Mobile",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, "/dettagliolezione");
                        },
                      ),
                      TextButton(
                        child: Text("Inglese",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, "/dettagliolezione");
                        },
                      ),
                      TextButton(
                        child: Text("Analisi 1",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, "/dettagliolezione");
                        },
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    ); // Scaffold
  }
}

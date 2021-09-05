import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCourse extends StatefulWidget {
  CardCourse({Key? key}) : super(key: key);
  @override
  _CardCourseState createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: const Text(
              "Programmazione mobile",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Mario Rossi',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Corso di programmazione mobile, AS 2020/2021',
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                child: Text("Dettaglio"),
                onPressed: () {
                  Navigator.pushNamed(context, "/dettagliocorso");
                },
              )
            ],
          )
        ],
      ),
    ); // Scaffold
  }
}

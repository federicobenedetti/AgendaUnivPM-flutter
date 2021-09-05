import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardLesson extends StatefulWidget {
  CardLesson({Key? key}) : super(key: key);
  @override
  _CardLessonState createState() => _CardLessonState();
}

class _CardLessonState extends State<CardLesson> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: const Text(
              "Lorem ipsum",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Mario Rossi',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus sollicitudin nisl, pretium fringilla metus varius tincidunt. Maecenas viverra vestibulum lacinia.',
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                child: Text("Lezione"),
                onPressed: () {
                  Navigator.pushNamed(context, "/dettagliolezione");
                },
              )
            ],
          )
        ],
      ),
    ); // Scaffold
  }
}

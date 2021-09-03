import "dart:ui" as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Profilo",
                style: TextStyle(fontSize: 22, color: Colors.black)),
            const SizedBox(height: 10),
            const Text(
                "Questa sezione mostra lo stato della tua carriera universitaria. Potrai quindi visualizzare la tua matricola, inviare un feedback per migliorare l'app o visualizzare le FAQ per ulteriori chiarimenti."),
            const SizedBox(height: 30),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Text("MR", style: TextStyle(fontSize: 38))))
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Mario Rossi",
                      style: TextStyle(fontSize: 22),
                    ),
                    Row(
                      children: [
                        Text(
                          "S123456",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(Icons.email, color: Colors.grey),
                  alignment: ui.PlaceholderAlignment.middle,
                  style: TextStyle(fontSize: 18)),
              TextSpan(
                  text: "  mario.rossi@gmail.com",
                  style: TextStyle(fontSize: 18)),
            ])),
            const SizedBox(height: 10),
            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(Icons.phone, color: Colors.grey),
                  alignment: ui.PlaceholderAlignment.middle,
                  style: TextStyle(fontSize: 18)),
              TextSpan(text: "  +39 321654987", style: TextStyle(fontSize: 18)),
            ])),
            const SizedBox(height: 10),
            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(Icons.hourglass_bottom, color: Colors.grey),
                  alignment: ui.PlaceholderAlignment.middle,
                  style: TextStyle(fontSize: 18)),
              TextSpan(text: "  2° Anno", style: TextStyle(fontSize: 18)),
            ])),
            const SizedBox(height: 10),
            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(Icons.euro, color: Colors.grey),
                  alignment: ui.PlaceholderAlignment.middle,
                  style: TextStyle(fontSize: 18)),
              TextSpan(
                  text: "  Situazione tasse: regolare",
                  style: TextStyle(fontSize: 18)),
            ])),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/lessoncalendar");
                },
                child: Text("CALENDARIO LEZIONI")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/faq");
                },
                child: Text("FAQ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/feedback");
                },
                child: Text("FEEDBACK")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Text("LOGOUT")),
          ],
        ));
  }
}

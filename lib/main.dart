import 'package:agendaunivpm_f/screens/dettagliocorso.dart';
import 'package:agendaunivpm_f/screens/dettagliolezione.dart';
import 'package:agendaunivpm_f/screens/faq.dart';
import 'package:agendaunivpm_f/screens/listacorsiiscritto.dart';
import 'package:agendaunivpm_f/screens/listalezioni.dart';
import 'package:agendaunivpm_f/screens/sendfeedback.dart';
import 'package:agendaunivpm_f/screens/lessoncalendar.dart';
import 'package:agendaunivpm_f/screens/listacorsi.dart';
import 'package:agendaunivpm_f/screens/login.dart';
import 'package:agendaunivpm_f/screens/streaminglezione.dart';
import 'package:agendaunivpm_f/screens/userprofile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda UnivPM',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/userprofile': (context) => UserProfile(),
        '/faq': (context) => Faq(),
        '/feedback': (context) => SendFeedback(),
        '/lessoncalendar': (context) => LessonCalendar(),
        '/listacorsi': (context) => ListaCorsi(),
        '/listacorsiiscritto': (context) => ListaCorsiIscritto(),
        '/listalezioni': (context) => ListaLezioni(),
        '/streaminglezione': (context) => StreamingLezione(),
        '/dettagliocorso': (context) => DettaglioCorso(),
        '/dettagliolezione': (context) => DettaglioLezione()
      },
    );
  }
}




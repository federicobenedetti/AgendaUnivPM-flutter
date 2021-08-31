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
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.white,
          backgroundColor: Colors.white
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
      }, // Routes
    );
  }
}




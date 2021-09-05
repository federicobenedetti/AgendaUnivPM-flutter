import 'package:agendaunivpm_f/widgets/cardfaq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  final items = [
    CardFaq(
        cardFaqTitle: 'Da chi è stata scritta questa app?',
        cardFaqDescription:
            'Il ragazzo che ha programmato questa app si chiama Federico Benedetti. Viene da Fermignano, un piccolo paesino nella provincia di Pesaro e Urbino. Matricola S1088801'),
    CardFaq(
        cardFaqTitle:
            'Rimpiazzerà mai l\'applicazione ufficiale dell\'università?',
        cardFaqDescription:
            'Chissà, magari un giorno. Per ora è stata unicamente scritta per riuscire a prendere 30 all\'esame di Programmazione Mobile ;)'),
    CardFaq(
        cardFaqTitle: 'L\'app comunica con qualche tipo di Backend?',
        cardFaqDescription:
            'L\'applicazione scritta in Kotlin sì, questa, invece, no.'),
    CardFaq(
        cardFaqTitle: 'E\' stato difficile mettere mano a Kotlin / Flutter?',
        cardFaqDescription:
            'Ho già un background in Android e nelle app, però ultimamente ho utilizzato molto più tecnologie alla base di Web App come Angular / Typescript, o linguaggi Backend tipo C#'),
    CardFaq(
        cardFaqTitle: 'Qual è stata la difficoltà maggiore?',
        cardFaqDescription:
            'Questo è un punto a sfavore del mondo di Android (IMHO): ogni volta che ritorno a scrivere applicazioni noto che devo trovare una mia soluzione ai problemi. E\' raro che ciò che trovo scritto sul web (sia documentazione ufficiale che terze parti) sia completo e/o aggiornato / funzionante.'),
    CardFaq(
        cardFaqTitle: 'Come è stata, tutto sommato, l\'esperienza?',
        cardFaqDescription:
            'Divertente! Come al solito. Mi piace immergermi nella tecnologia, si impara sempre qualcosa di nuovo.'),
  ];

  Faq({Key? key}) : super(key: key);
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Agenda UnivPM"),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Text("FAQ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 22, color: Colors.black)),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    // Let the ListView know how many items it needs to build.
                    itemCount: 6,
                    // Provide a builder function. This is where the magic happens.
                    // Convert each item into a widget based on the type of item it is.
                    itemBuilder: (context, index) {
                      return widget.items[index];
                    },
                  ),
                ),
              )
            ],
          ),
        )); // Scaffold
  }
}

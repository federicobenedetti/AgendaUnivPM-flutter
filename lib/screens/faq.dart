import 'package:agendaunivpm_f/widgets/cardfaq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
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
          ),
        )); // Scaffold
  }
}

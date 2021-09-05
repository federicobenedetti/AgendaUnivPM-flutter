import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardFaq extends StatefulWidget {
  final String cardFaqTitle;
  final String cardFaqDescription;

  CardFaq(
      {Key? key, required this.cardFaqTitle, required this.cardFaqDescription})
      : super(key: key);

  @override
  _CardFaqState createState() => _CardFaqState();
}

class _CardFaqState extends State<CardFaq> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
              title: Text(
            widget.cardFaqTitle,
            style: TextStyle(fontSize: 18, color: Colors.red),
          )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.cardFaqDescription,
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),
            ),
          )
        ],
      ),
    ); // Scaffold
  }
}

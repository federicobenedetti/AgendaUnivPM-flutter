import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

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
                child: Text(
                  "Profilo",
                  textAlign: TextAlign.left,
                    style:
                    TextStyle(
                        fontSize: 22,
                        color: Colors.black
                    )
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Questa sezione mostra lo stato della tua carriera universitaria. Potrai quindi visualizzare la tua matricola, inviare un feedback per migliorare l'app o visualizzare le FAQ per ulteriori chiarimenti."
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      child: ClipRRect(
                        child: Text("MR",
                            style:
                            TextStyle(
                                fontSize: 38
                            )),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text("Mario Rossi",
                            textAlign: TextAlign.left,
                            style:
                            TextStyle(
                                fontSize: 28
                            ),
                        ),
                        Text("S123456",
                          textAlign: TextAlign.left,
                        )
                      ],
                    )

                  ]
                )
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profilo',
                backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Corsi',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks),
                label: 'Preferiti',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp),
                label: 'Lezioni',
                backgroundColor: Colors.red
            )
          ],
          currentIndex: 0,
      ),
    ); // Scaffold
  }
}

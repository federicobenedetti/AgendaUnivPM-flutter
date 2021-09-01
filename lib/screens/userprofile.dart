import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int _currentIndex = 0;

  static List<Widget> _pages = <Widget>[
    Container(
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

    Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Container(
              child: Text(
                  "Corsi a cui puoi iscriverti",
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
            "Questa sezione mostra la lista di tutti i corsi disponibili a cui puoi iscriverti."
          ),
          SizedBox(height: 20),
        ],
      )
    ),

    Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text(
                    "Corsi a cui sei iscritto",
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
              "Questa sezione mostra i corsi a cui sei attualmente iscritto. Entrando nel dettaglio del corso potrai scegliere di disiscriverti dal corso."
            ),
            SizedBox(height: 20),
          ],
        )
    ),
    
    Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text(
                    "Lista lezioni",
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
              "Questa sezione mostra l'elenco delle lezioni dei vari corsi a cui sei iscritto. Entrando nel dettaglio potrai accedere allo streaming della lezione."
            ),
            SizedBox(height: 20),
          ],
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda UnivPM"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child:  _pages.elementAt(_currentIndex),
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
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,
      ),
    ); // Scaffold
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

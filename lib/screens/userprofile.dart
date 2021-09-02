
import 'package:agendaunivpm_f/screens/faq.dart';
import 'package:agendaunivpm_f/screens/lessoncalendar.dart';
import 'package:agendaunivpm_f/screens/login.dart';
import 'package:agendaunivpm_f/screens/sendfeedback.dart';
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
    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
            "Profilo",
            style:
            TextStyle(
                fontSize: 22,
                color: Colors.black
            )
        ),
        const SizedBox(height: 10),
        const Text(
            "Questa sezione mostra lo stato della tua carriera universitaria. Potrai quindi visualizzare la tua matricola, inviare un feedback per migliorare l'app o visualizzare le FAQ per ulteriori chiarimenti."
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                    radius: 50,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Text(
                            "MR",
                            style:
                            TextStyle(
                                fontSize: 38
                            )
                        )
                    )
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                        "Mario Rossi",
                      style: TextStyle(
                        fontSize: 22
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("S123456",
                      style: TextStyle(
                        fontSize: 14
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
        Text.rich(
          TextSpan(
            children: [
              WidgetSpan(child: Icon(Icons.email, color: Colors.grey)),
              TextSpan(text: "mario.rossi@gmail.com", style: TextStyle(fontSize: 18)),
            ]
          )
        ),
        const SizedBox(height: 10),
        Text.rich(
            TextSpan(
                children: [
                  WidgetSpan(child: Icon(Icons.phone, color: Colors.grey)),
                  TextSpan(text: "+39 321654987", style: TextStyle(fontSize: 18)),
                ]
            )
        ),
        const SizedBox(height: 10),
        Text.rich(
            TextSpan(
                children: [
                  WidgetSpan(child: Icon(Icons.hourglass_bottom, color: Colors.grey)),
                  TextSpan(text: "2° Anno", style: TextStyle(fontSize: 18)),
                ]
            )
        ),
        const SizedBox(height: 10),
        Text.rich(
            TextSpan(
                children: [
                  WidgetSpan(child: Icon(Icons.euro, color: Colors.grey)),
                  TextSpan(text: "Situazione tasse: regolare", style: TextStyle(fontSize: 18)),
                ]
            )
        ),
        Spacer(),
        ElevatedButton(
            onPressed: () {

            },
            child: Text("CALENDARIO LEZIONI")
        ),
        ElevatedButton(
            onPressed: () {

            },
            child: Text("FAQ")
        ),
        ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, "/first");
            },
            child: Text("FEEDBACK")
        ),
        ElevatedButton(
            onPressed: () {
             //  Navigator.pushReplacementNamed(context, '/login');
            },
            child: Text("LOGOUT")
        ),

      ],
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
        title: const Text("Agenda UnivPM"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child:  _pages.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(Icons.account_circle),
                label: 'Profilo',
                backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.list),
                label: 'Corsi',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.bookmarks),
                label: 'Preferiti',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.menu_book_sharp),
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

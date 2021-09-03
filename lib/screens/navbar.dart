import 'package:agendaunivpm_f/screens/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listacorsi.dart';
import 'listacorsiiscritto.dart';
import 'listalezioni.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  static List<Widget> _pages = <Widget>[
    UserPage(),
    ListaCorsi(),
    ListaCorsiIscritto(),
    ListaLezioni()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agenda UnivPM"),
      ),
      body: _pages.elementAt(_currentIndex),
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
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: const Icon(Icons.bookmarks),
              label: 'Preferiti',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: const Icon(Icons.menu_book_sharp),
              label: 'Lezioni',
              backgroundColor: Colors.red)
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

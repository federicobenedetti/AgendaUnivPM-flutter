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
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profilo',
                backgroundColor: Colors.red
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
          currentIndex: 0
      ),
    ); // Scaffold
  }
}

import 'package:flutter/material.dart';
import 'package:sec_task/tab_bar_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);
  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[index],
        bottomNavigationBar:  BottomNavigationBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          currentIndex: index,
          selectedIconTheme: const IconThemeData(size: 35),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
          ],
          onTap: (x) => setState(() {
            index = x;
          }),
        )
    );
  }
}

List body=const[
   Center(
    child: Text('Body 1'),
  ),
   TabsBarScreen()
];
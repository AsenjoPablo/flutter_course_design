import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 20,
        iconSize: 32,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 230, 90, 137),
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Colors.white38,
        items: const [
          BottomNavigationBarItem(
              tooltip: 'Calendario',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.calendar_today_sharp,
                ),
              ),
              label: 'Calendario'),
          BottomNavigationBarItem(
              tooltip: 'Gráfica',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.pie_chart_outline),
              ),
              label: 'Gráfica'),
          BottomNavigationBarItem(
              tooltip: 'Usuario',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
              label: 'Usuario'),
        ]);
  }
}

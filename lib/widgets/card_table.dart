import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              icon: Icons.auto_graph_sharp,
              color: Colors.blue,
              text: 'Inversiones'),
          _SingleCard(
              icon: Icons.shopping_bag_rounded,
              color: Color.fromARGB(255, 255, 66, 129),
              text: 'Compras'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.euro,
              color: Color.fromARGB(255, 210, 99, 230),
              text: 'Finanzas'),
          _SingleCard(icon: Icons.warning, color: Colors.red, text: 'Alertas'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.sports_soccer,
              color: Color.fromARGB(255, 154, 118, 255),
              text: 'Deportes'),
          _SingleCard(
              icon: Icons.sports_esports, color: Colors.teal, text: 'Gaming'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.food_bank,
              color: Color.fromARGB(255, 81, 134, 224),
              text: 'Restaurantes'),
          _SingleCard(
              icon: Icons.work,
              color: Color.fromARGB(255, 2, 172, 8),
              text: 'Trabajo'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        child: Icon(
          icon,
          size: 32,
          color: Colors.white,
        ),
        radius: 36,
      ),
      const SizedBox(height: 10),
      Text(text,
          style: TextStyle(
              color: color, fontSize: 18, fontWeight: FontWeight.w600))
    ]);
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            16), // para que el blur respete el borderradius
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(16)),
            child: child,
          ),
        ),
      ),
    );
  }
}

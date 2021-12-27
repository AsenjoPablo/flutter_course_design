import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // top image
          const Image(image: AssetImage('assets/landscape.jpg')),

          Container(height: 20),

          // widget title
          const Title(),

          Container(height: 20),

          // buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionButton(
                icon: Icons.phone,
                buttonText: 'CALL',
                buttonColor: Theme.of(context).colorScheme.primary,
              ),
              ActionButton(
                icon: Icons.map,
                buttonText: 'ROUTE',
                buttonColor: Theme.of(context).colorScheme.primary,
              ),
              ActionButton(
                icon: Icons.share,
                buttonText: 'SHARE',
                buttonColor: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),

          Container(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: const [
                Text(
                    'Mollit fugiat tempor eu commodo tempor aute deserunt aute. Aliquip elit sunt dolor est. Reprehenderit voluptate do esse commodo deserunt reprehenderit occaecat in adipisicing laboris occaecat culpa incididunt. Veniam id elit ut excepteur consequat velit commodo deserunt aliquip adipisicing fugiat. Lorem et ea consectetur id ipsum minim fugiat non sit reprehenderit laborum non. Culpa ex exercitation ullamco duis consectetur cillum anim. Labore pariatur amet dolor consequat exercitation cillum laboris aliquip amet culpa adipisicing irure incididunt.')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.icon,
    required this.buttonText,
    required this.buttonColor,
  }) : super(key: key);

  final IconData icon;
  final String buttonText;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: buttonColor,
        size: 32.0,
      ),
      Container(height: 6),
      Text(buttonText,
          style: TextStyle(
              color: buttonColor, fontSize: 16, fontWeight: FontWeight.w600)),
    ]);
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: const [
            Text(
              'Lago genérico en alguna montaña',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Región, Europa', style: TextStyle(color: Colors.black45))
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        Expanded(child: Container()),
        const Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ]),
    );
  }
}

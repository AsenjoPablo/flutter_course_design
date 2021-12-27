import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
        Color.fromARGB(255, 0, 77, 139),
        Color.fromARGB(255, 0, 48, 87)
      ]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // blue gradient
        Container(
          decoration: boxDecoration,
        ),

        // pink box
        const Positioned(top: -100, left: -30, child: _PinkBox()),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 90,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 185, 19, 127),
              Color.fromARGB(255, 255, 101, 201),
            ])),
      ),
    );
  }
}

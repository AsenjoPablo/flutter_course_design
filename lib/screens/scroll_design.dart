import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // box decoration para el fondo
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [Color(0xff5ee8C5), Color(0xff30BAD6)]));

    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const [
          InitialPage(),
          ActionPage(),
        ],
      ),
    ));
  }
}

class InitialPage extends StatelessWidget {
  const InitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        // Background
        Background(),

        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const mainTextStyle = TextStyle(
        fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold);

    // safe area tiene en cuenta notch y demás
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 72),
          const Text('11º', style: mainTextStyle),
          const Text('Miércoles', style: mainTextStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 80, color: Colors.white)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

class ActionPage extends StatelessWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 32)),
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 77, 210, 236),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: const StadiumBorder()),
        ),
      ),
    );
  }
}

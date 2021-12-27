import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// routes
import 'package:flutter_course_design/screens/basic_design.dart';
import 'package:flutter_course_design/screens/home_design.dart';
import 'package:flutter_course_design/screens/scroll_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // esto modifica la hora, batería, etc arriba
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hola mundo',
        home: const Text('Test'),
        theme: ThemeData.dark(),
        initialRoute: 'home-design',
        routes: {
          'basic-design': (_) => const BasicDesignScreen(),
          'scroll-design': (_) => const ScrollDesignScreen(),
          'home-design': (_) => const HomeDesignScreen(),
        });
  }
}

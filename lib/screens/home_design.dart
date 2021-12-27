import 'package:flutter_course_design/widgets/background.dart';
import 'package:flutter_course_design/widgets/card_table.dart';
import 'package:flutter_course_design/widgets/custom_bottom_navigation.dart';
import 'package:flutter_course_design/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeDesignScreen extends StatelessWidget {
  const HomeDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          const Background(),

          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // titulos
          PageTitle(),

          // tarjetas
          CardTable(),
        ],
      ),
    );
  }
}

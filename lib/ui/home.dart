import 'package:al_quran_app/screen/juz_list_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 48, 98, 49),
        title: const Text("Al-Quran App"),
      ),
      body: JuzListScreen(),
      backgroundColor: const Color.fromARGB(255, 35, 58, 36),
    );
  }
}

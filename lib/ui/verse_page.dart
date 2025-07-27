import 'package:flutter/material.dart';
import 'package:quran_flutter/quran.dart';

class VersePage extends StatelessWidget {
  final String title;

  const VersePage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 48, 98, 49),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(Quran.bismillah, style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 35, 58, 36),
    );
  }
}

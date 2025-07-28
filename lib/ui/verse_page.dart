import 'package:al_quran_app/screen/screen.dart';
import 'package:flutter/material.dart';

class VersePage extends StatelessWidget {
  final String title;
  final int surahNumber;

  const VersePage({required this.title, required this.surahNumber, super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 48, 98, 49),
      ),
      body: Expanded(child: VerseScreen(surahNumber: surahNumber)),
      backgroundColor: const Color.fromARGB(255, 35, 58, 36),
    );
  }
}

import 'package:al_quran_app/widget/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:quran_flutter/enums/surah_type.dart';
import 'package:quran_flutter/models/surah.dart';
import 'package:quran_flutter/quran.dart';

class JuzListScreen extends StatefulWidget {
  const JuzListScreen({super.key});

  @override
  State<StatefulWidget> createState() => _JuzListScreenState();
}

class _JuzListScreenState extends State<JuzListScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: Quran.getSurahAsList().length,
      itemBuilder: (context, index) {
        Surah surah = Quran.getSurahAsList()[index];

        return CardWidget(
          title: Quran.getSurahNameEnglish(surah.number),
          index: index,
          meaning: surah.meaning,
          surahNumber: surah.number,
          verseNumber: surah.verseCount,
          revelationType: surah.type == SurahType.meccan ? 'Mekkah' : 'Madinah',
        );
      },
    );
  }
}

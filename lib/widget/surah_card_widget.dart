import 'package:al_quran_app/ui/verse_page.dart';
import 'package:flutter/material.dart';
import 'package:quran_flutter/quran.dart';

class SurahCardWidget extends StatelessWidget {
  final String title;
  final String meaning;
  final String revelationType;
  final int index;
  final int surahNumber;
  final int verseNumber;

  const SurahCardWidget({
    required this.revelationType,
    required this.verseNumber,
    required this.surahNumber,
    required this.title,
    required this.index,
    required this.meaning,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: Colors.green[700],
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return VersePage(title: title);
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meaning,
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                Text(
                  revelationType,
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                Text(
                  'Juz ${Quran.getJuzNumber(surahNumber: surahNumber, verseNumber: verseNumber)}',
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                '${index + 1}',
                style: const TextStyle(color: Colors.green, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

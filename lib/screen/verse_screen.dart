import 'package:flutter/material.dart';
import 'package:quran_flutter/quran_flutter.dart';

class VerseScreen extends StatefulWidget {
  final int surahNumber;

  const VerseScreen({required this.surahNumber, super.key});

  @override
  State<StatefulWidget> createState() => _VerseScreenState();
}

class _VerseScreenState extends State<VerseScreen> {
  late List<Verse>? verses;
  late List<Verse>? versesEnglish;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      verses = Quran.getSurahVersesAsList(widget.surahNumber);
      versesEnglish = Quran.getSurahVersesAsList(
        widget.surahNumber,
        language: QuranLanguage.indonesian,
      );
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading || verses == null || versesEnglish == null) {
      return const Center(child: CircularProgressIndicator());
    }

    if (verses!.isEmpty || versesEnglish!.isEmpty) {
      return Center(
        child: Text(
          'No verses found for Surah ${widget.surahNumber}',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      );
    }

    return ListView.builder(
      itemCount: verses!.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(Quran.bismillah, style: TextStyle(fontSize: 25)),
            ),
          );
        }

        final verse = verses![index - 1];
        final verseEnglish = versesEnglish![index - 1];
        final number = index;

        return ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 20,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 14, color: Colors.white70),
                textAlign: TextAlign.left,
              ),
              Text(
                verse.text,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.right,
              ),

              Text(
                verseEnglish.text,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.right,
              ),

              Divider(color: Colors.greenAccent),
            ],
          ),
        );
      },
    );
  }
}

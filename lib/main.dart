import 'package:al_quran_app/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_flutter/quran.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Quran.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

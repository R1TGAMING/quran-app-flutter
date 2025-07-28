import 'package:al_quran_app/screen/about_screen.dart';
import 'package:al_quran_app/screen/surah_list_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 48, 98, 49),
        title: const Text("Al-Quran App"),
        bottom: TabBar(
          controller: controller,
          labelColor: Colors.green[200],
          indicatorColor: Colors.green[200],
          tabs: const [
            Tab(text: 'Surah'),
            Tab(text: 'Juz'),
            Tab(text: 'About'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          const SurahListScreen(),
          Center(
            child: Text(
              "Coming Soon...",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          AboutScreen(),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 35, 58, 36),
    );
  }
}

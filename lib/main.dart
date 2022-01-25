import 'package:flutter/material.dart';
import 'package:staggered_grid_view/screens/prayer_dua_screen.dart';
import 'package:staggered_grid_view/screens/prayer_time_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: DuaPrayerScreen(),
      home: PrayerTimeScreen(),
    );
  }
}

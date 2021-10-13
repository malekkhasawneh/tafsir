import 'package:flutter/material.dart';
import 'package:quran_tafsir/Screens/Homepage.dart';

import 'Screens/SplachScreen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplachScreen.routeName: (context) => SplachScreen(),
        HomePage.routeName: (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Holy Qur\'an tafsir',
      home: SplachScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_tafsir/Screens/Homepage.dart';

import 'Screens/SplachScreen.dart';

main() {
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);
  runApp(MyApp());
}
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
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: SplachScreen(),
      ),
    );
  }
}

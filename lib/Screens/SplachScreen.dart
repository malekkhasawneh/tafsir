import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quran_tafsir/Screens/Homepage.dart';

class SplachScreen extends StatefulWidget {
  static const routeName = 'SplachScreen';

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/splachScreenImage.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchTextButton extends StatelessWidget {
  final String buttonText;

  SearchTextButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(height: 40,
      decoration:
          BoxDecoration(border: Border.all(width: 1.0, color: Colors.grey)),
      child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                'images/red-circle.png',
                width: 15,
                height: 15,
              ),
              Text(
                buttonText,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ],
          )),
    );
  }
}

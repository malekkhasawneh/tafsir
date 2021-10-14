import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final GestureTapCallback onPressedButton;
  final String imagePath;

  CustomButtons({required this.onPressedButton, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(left: size.width*0.004),
        child: Container(width: 45,height:45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tafsir_project/features/Search/Presentation/Widget/SearchTextField.dart';
import 'package:tafsir_project/features/Search/Presentation/Widget/Search_Text_Button.dart';

class SearchDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Dialog(
          child: Container(
            height: 200,
            child: Column(
              children: [
                Container(
                  color: Color(0xffc7e9ed).withAlpha(90),
                  width: double.infinity,
                  child: Text(
                    'البحث في القران',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1),
                  child: SearchTextField(),
                ),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SearchTextButton(buttonText: 'مفردات القران'),
                     
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

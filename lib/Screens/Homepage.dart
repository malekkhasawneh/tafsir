import 'package:flutter/material.dart';
import 'package:quran_tafsir/CustomWidget/CustomButtons.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List pages = [
      'images/quran_pages/Al-Fatihah.png',
      'images/quran_pages/Al-Fatihah.png',
      'images/quran_pages/Al-Fatihah.png',
      'images/quran_pages/Al-Fatihah.png',
      'images/quran_pages/2.png',
    ];
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/QuranPageBackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: size.height < 300 ? size.height * 0.2 : 95,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/PageHeader.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/playEnd1x.png',
                      ),
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/play_all_icon.png',
                      ),
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/ayaList.png',
                      ),
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/settings_icon.png',
                      ),
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/list_icon.png',
                      ),
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/bookmark_list_icon.png',
                      ),
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/addBookMark_icon.png',
                      ),
                      CustomButtons(
                        onPressedButton: () {},
                        imagePath: 'images/search_icon.png',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.13),
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.82,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/QuranFramDesign.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 33, left: 24),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          children: pages
                              .map((images) => Image.asset(
                            images,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

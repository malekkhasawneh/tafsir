import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_tafsir/CustomWidget/CustomButtons.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List pages = [
      'images/quran_pages/page1.png',
      'images/quran_pages/page2.png',
      'images/quran_pages/page3.png',
      'images/quran_pages/page4.png',
      'images/quran_pages/page5.png',
      'images/quran_pages/page6.png',
      'images/quran_pages/page7.png',
      'images/quran_pages/page8.png',
      'images/quran_pages/page9.png',
      'images/quran_pages/page10.png',
    ];
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          width: size.width > 100 ? 500 : double.infinity,
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
                  height: size.height < 300 ? size.height * 0.2 : 85,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/PageHeader.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 14),
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
                  padding: EdgeInsets.only(top: 76),
                  child: Container(
                    width: size.width * 1.0,
                    height: size.height * 0.83,
                    color: Colors.white,
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            height: size.height * 0.73,
                            width: size.width >= 508 ? 445 : size.width * 0.875,
                            child: PageView(
                              scrollDirection: Axis.horizontal,
                                children: pages
                                    .map((images) => Image.asset(
                                          images,
                                          fit: BoxFit.fill,
                                        ))
                                    .toList()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 76),
                  child: Container(
                    width: size.width * 1.0,
                    height: size.height * 0.83,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/QuranFramDesign.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

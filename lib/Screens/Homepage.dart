import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_tafsir/CustomWidget/CustomButtons.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PageController? controller;
    Size size = MediaQuery.of(context).size;
    List pages = [
      {
        'pageImage': 'images/quran_pages/page1.png',
        'pageNumber': 1,
      },
      {
        'pageImage': 'images/quran_pages/page2.png',
        'pageNumber': 2,
      },
      {
        'pageImage': 'images/quran_pages/page3.png',
        'pageNumber': 3,
      },
      {
        'pageImage': 'images/quran_pages/page4.png',
        'pageNumber': 4,
      },
      {
        'pageImage': 'images/quran_pages/page5.png',
        'pageNumber': 5,
      },
      {
        'pageImage': 'images/quran_pages/page6.png',
        'pageNumber': 6,
      },
      {
        'pageImage': 'images/quran_pages/page7.png',
        'pageNumber': 7,
      },
      {
        'pageImage': 'images/quran_pages/page8.png',
        'pageNumber': 8,
      },
      {
        'pageImage': 'images/quran_pages/page9.png',
        'pageNumber': 9,
      },
      {
        'pageImage': 'images/quran_pages/page10.png',
        'pageNumber': 10,
      },
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
                        child: Container(
                          width: size.width * 1.0,
                          height: size.height * 0.83,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/QuranFramDesign.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 109, left: 30),
                    child: Container(
                      height: size.height * 0.73,
                      width: size.width >= 508 ? 445 : size.width * 0.86,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: PageView(
                          controller: controller,
                            scrollDirection: Axis.horizontal,
                            children: pages
                                .map((images) => Image.asset(
                                      images['pageImage'],
                                      fit: BoxFit.fill,
                                    ))
                                .toList()),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 62, left: 70),
                        child: Image.asset(
                          'images/quran_pages/SoraName.png',
                          width: 70,
                          height: 70,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 62, left: 130),
                        child: Image.asset(
                          'images/quran_pages/Joza.png',
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ],
                  ),
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: file_names, must_be_immutable, unnecessary_const

import 'package:flutter/material.dart';
import 'package:design/branches/listViewWidgetFilm.dart';
import 'package:design/branches/listViewWidgetArtist.dart';
import 'package:design/branches/listViewWidgetNews.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xffe8e8e8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 35, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff051cda),
                          size: 30,
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        child: Image.asset("assets/images/icon.png"),
                        width: 30,
                        height: 30,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                RowWidget(
                  text: const Text(
                    "فیلم ها",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const ListViewWidgetFilm(),
                const SizedBox(
                  height: 50.0,
                ),
                RowWidget(
                  text: const Text(
                    "هنرمندان",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const ListViewWidgetArtist(),
                const SizedBox(
                  height: 50.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "اخبار",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const ListViewWidgetNews(),
                const SizedBox(
                  height: 50.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 40.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "قلک ها",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, bottom: 8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Stack(
                      children: [
                        Card(
                          // elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            width: 350,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "A۱۰۰:شماره قلک",
                                      style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 18.0),
                                      child: Text("آقای علی عزیزی",
                                          style: TextStyle(
                                              color: Color(0xff707070),
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text("شغل: مدیر",
                                          style: TextStyle(
                                              color: Color(0xff707070),
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: const Image(
                                        image: AssetImage(
                                            "assets/images/flutter.png")),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white),
                            width: 20,
                            height: 20,
                            child: const Image(
                                image: AssetImage("assets/images/like.png")),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  Text text;
  RowWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, left: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset("assets/images/menu.png"),
            width: 30,
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: text,
          ),
        ],
      ),
    );
  }
}

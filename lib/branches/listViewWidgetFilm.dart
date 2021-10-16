// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListViewWidgetFilm extends StatelessWidget {
  const ListViewWidgetFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 15),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffe8e8e8),
          // borderRadius: BorderRadius.circular(30.0),
        ),

        //  Color(0xfff5f5f5),
        width: MediaQuery.of(context).size.width,
        height: 310.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Card(
                    // elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    // 0xfffefefe
                    color: const Color(0xfffefefe),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfffefefe),
                        // const Color(0xfffefefe),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      margin: const EdgeInsets.all(12.0),
                      width: 160.0,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: const Image(
                              image: AssetImage("assets/images/oxidan.jpg"),
                              // width: 300,
                              height: 200,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                color: Color(0xffeca810),
                              ),
                              Text(
                                "۴.۹",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff707070)),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Text(
                                "اکسیدان",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff707070)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "دقیقه ۴۵",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff707070)),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Text(
                                "سال ۱۳۹۸",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff707070)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    width: 30,
                    height: 30,
                    child: const Image(
                        image: AssetImage("assets/images/like.png")),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

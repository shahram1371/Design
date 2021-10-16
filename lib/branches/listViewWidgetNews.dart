// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListViewWidgetNews extends StatelessWidget {
  const ListViewWidgetNews({Key? key}) : super(key: key);

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
        height: 320.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: 1,
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
                    color: const Color(0xfffefefe),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfffefefe),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      margin: const EdgeInsets.all(12.0),
                      width: 200.0,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: const Image(
                                image: AssetImage("assets/images/mehran.jpg")),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "مهران مدیری: جزء به جزء",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff707070)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0, top: 10),
                            child: Text(
                              "دورهمی جدید کپی است",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff707070)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "۱۴۰۰/۰۳/۲۶",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff707070),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "۲۰۰۰ بازدید",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff707070),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Color(0xff707070),
                                ),
                              )
                            ],
                          )
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

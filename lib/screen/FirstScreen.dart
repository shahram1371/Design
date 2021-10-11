// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'seconScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color(0xfffbfbfb),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Color(0xff051cda),
                        size: 30,
                      ),
                      // ignore: sized_box_for_whitespace
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondScreen()));
                        },
                        child: Container(
                          child: Image.asset("assets/images/icon.png"),
                          width: 30,
                          height: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 58,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xffbabdf3),
                                  radius: 49,
                                  child: CircleAvatar(
                                    radius: 46,
                                    backgroundImage:
                                        AssetImage("assets/images/flutter.png"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Color(0xffbebebe),
                                ),
                                radius: 25,
                                backgroundColor: Color(0xfffafcf9),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "کد کاربری: ۱۹۰",
                          style:
                              TextStyle(color: Color(0xff7f7f7f), fontSize: 18),
                        ),
                        Text(
                          "شماره همراه: ۰۹۱۵۱۷۰۹۶۶۷",
                          style:
                              TextStyle(color: Color(0xff7f7f7f), fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SpecificationCard(
                  subject: "نام",
                  icon: Icon(
                    Icons.person_outline,
                    color: Color(0xffa9a9a9),
                  ),
                ),
                SpecificationCard(
                  subject: "نام خانوادگی",
                  icon: Icon(
                    Icons.person_outline,
                    color: Color(0xffa9a9a9),
                  ),
                ),
                SpecificationCard(
                  subject: "شهر",
                  icon: Icon(
                    Icons.location_city,
                    color: Color(0xffa9a9a9),
                  ),
                ),
                SpecificationCard(
                  subject: "کد ملی",
                  icon: Icon(
                    Icons.payment_rounded,
                    color: Color(0xffa9a9a9),
                  ),
                ),
                SpecificationCard(
                  subject: "شماره شناسنامه",
                  icon: Icon(
                    Icons.payment_rounded,
                    color: Color(0xffa9a9a9),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "خانم",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff9a9a9a)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check_box_outline_blank,
                        color: Color(0xffa9a9a9),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "آقا",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff9a9a9a)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check_box_outlined,
                        color: Color(0xff99d174),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "جنسیت",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff9a9a9a)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff051cda),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "ثبت",
                      style: TextStyle(color: Colors.white, fontSize: 20),
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

class SpecificationCard extends StatelessWidget {
  String subject;
  Icon icon;
  SpecificationCard({required this.subject, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xffe6e6e6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                  height: 40,
                  width: 130,
                  // color: Colors.yellow,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "$subject:",
                      hintStyle: TextStyle(fontSize: 20),
                      hintTextDirection: TextDirection.rtl,
                    ),
                  )),
            ),
            Container(
              child: icon,
              height: 40,
              width: 50,
              // color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}


//  border: InputBorder.none,
//                     hintText: "نام:",
//                     hintTextDirection: TextDirection.rtl,
//                     hintStyle: TextStyle(fontSize: 20)
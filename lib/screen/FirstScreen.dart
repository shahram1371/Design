// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:design/GenderCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'seconScreen.dart';
import 'package:design/dio_client.dart';
import 'package:design/User.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final DioClient _client = DioClient();
  @override
  void initState() {
    _client.getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: FutureBuilder<User?>(
          future: _client.getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              User? userInfo = snapshot.data;
              if (userInfo != null) {
                Data userData = userInfo.data;
                // List<User> list = snapshot.data;

                return BlocBuilder<GenderCubit, bool>(
                  builder: (context, state) => Container(
                    color: const Color(0xfffbfbfb),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, right: 20, left: 30),
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
                                    // if(DioClient().getData().
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondScreen()));
                                  },
                                  child: Container(
                                    child:
                                        Image.asset("assets/images/icon.png"),
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
                                            backgroundColor:
                                                const Color(0xffbabdf3),
                                            radius: 49,
                                            child: CircleAvatar(
                                              radius: 46,
                                              backgroundImage: AssetImage(
                                                  "assets/images/flutter.png"),
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
                                    style: TextStyle(
                                        color: Color(0xff7f7f7f), fontSize: 18),
                                  ),
                                  Text(
                                    "شماره همراه: ۰۹۱۵۱۷۰۹۶۶۷",
                                    style: TextStyle(
                                        color: Color(0xff7f7f7f), fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SpecificationCard(
                            initialValue: userData.info.cityKey,
                            subject: "نام",
                            icon: Icon(
                              Icons.person_outline,
                              color: Color(0xffa9a9a9),
                            ),
                          ),
                          SpecificationCard(
                            initialValue: userData.statusMessage,
                            subject: "نام خانوادگی",
                            icon: Icon(
                              Icons.person_outline,
                              color: Color(0xffa9a9a9),
                            ),
                          ),
                          SpecificationCard(
                            initialValue: userData.statusMessage,
                            subject: "شهر",
                            icon: Icon(
                              Icons.location_city,
                              color: Color(0xffa9a9a9),
                            ),
                          ),
                          SpecificationCard(
                            initialValue: userData.statusMessage,
                            subject: "کد ملی",
                            icon: Icon(
                              Icons.payment_rounded,
                              color: Color(0xffa9a9a9),
                            ),
                          ),
                          SpecificationCard(
                            initialValue: userData.statusMessage,
                            subject: "شماره شناسنامه",
                            icon: Icon(
                              Icons.payment_rounded,
                              color: Color(0xffa9a9a9),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 90.0, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "خانم",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xff9a9a9a)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                  onPressed: () => context
                                      .read<GenderCubit>()
                                      .changeGender(),
                                  child: Icon(
                                      state == false
                                          ? Icons.check_box_outlined
                                          : Icons.check_box_outline_blank,
                                      color: state == false
                                          ? Color(0xff99d174)
                                          : Color(0xffa9a9a9)),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "آقا",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xff9a9a9a)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                  onPressed: () => context
                                      .read<GenderCubit>()
                                      .changeGender(),
                                  child: Icon(
                                      state == true
                                          ? Icons.check_box_outlined
                                          : Icons.check_box_outline_blank,
                                      color: state == true
                                          ? Color(0xff99d174)
                                          : Color(0xffa9a9a9)),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "جنسیت",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xff9a9a9a)),
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
                              child: TextButton(
                                onPressed: () {
                                  DioClient().getData();
                                },
                                child: Text(
                                  "ثبت",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
            }
            return CircularProgressIndicator();
            // else {
            //    return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SpecificationCard extends StatelessWidget {
  String initialValue;
  String subject;
  Icon icon;
  SpecificationCard(
      {Key? key,
      required this.initialValue,
      required this.subject,
      required this.icon})
      : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    initialValue: initialValue,
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
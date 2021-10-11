// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screen/FirstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}




// body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 child: Align(
//                   alignment: Alignment.centerRight,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       top: 8.0,
//                       right: 8.0,
//                     ),
//                     child: Text(
//                       "کفش",
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
              // Container(
              //   color: Colors.white,
              //   width: MediaQuery.of(context).size.width,
              //   height: 220.0,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       reverse: true,
              //       itemCount: 10,
              //       itemBuilder: (BuildContext context, int index) {
              //         return Container(
              //           decoration: BoxDecoration(
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.grey,
              //               )
              //             ],
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(10.0),
              //           ),
              //           margin: EdgeInsets.all(7.0),
              //           width: 150.0,
              //           child: Center(child: Text("box $index")),
              //         );
              //       }),
              // ),
          //   ],
          // ),
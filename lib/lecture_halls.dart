import 'package:flutter/material.dart';

class LectureHalls extends StatefulWidget {
  const LectureHalls({Key? key}) : super(key: key);
  static const String id = "LectureHalls";

  @override
  State<LectureHalls> createState() => _LectureHallsState();
}

class _LectureHallsState extends State<LectureHalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text('TestUI')),),
      body: Container(
        padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[ Text('TestUI'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width*0.3,
            color: Colors.red,
          ),  Container(
            height: 100,
            width: MediaQuery.of(context).size.width*0.3,
            color: Colors.red,
          ) , Container(
            height: 100,
            width: MediaQuery.of(context).size.width*0.3,
            color: Colors.red,
          )
        ],),Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*0.3,
                  color: Colors.red,
                ),Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*0.3,
                  color: Colors.red,
                ),
              ],
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width*0.3,
              color: Colors.red,
            ) ,   Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*0.3,
                  color: Colors.red,
                ),Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*0.3,
                  color: Colors.red,
                ),
              ],
            ),
          ],),Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width*0.3,
              color: Colors.red,
            ),  Container(
              height: 100,
              width: MediaQuery.of(context).size.width*0.3,
              color: Colors.red,
            ) , Container(
              height: 100,
              width: MediaQuery.of(context).size.width*0.3,
              color: Colors.red,
            )
          ],)
      ]),),
    );
  }
}

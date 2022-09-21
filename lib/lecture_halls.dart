import 'package:flutter/material.dart';
import 'package:testui/styles.dart';
import 'package:testui/custom_widgets/custom_card.dart';

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
        title: const Center(
            child: Text(
          'TestUI',
          style: TextStyle(color: KColor1),
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Lecture Halls',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          height: 100,
                          width: 120,
                          image: 'images/image (4).png',
                          isBooked: false,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomCard(
                          height: 100,
                          width: 220,
                          image: 'images/image(1).png',
                          isBooked: true,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomCard(
                          height: 100,
                          width: 120,
                          image: 'images/image (6).png',
                          isBooked: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCard(
                              height: 100,
                              width: 120,
                              image: 'images/image (8).png',
                              isBooked: true,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomCard(
                              height: 100,
                              width: 120,
                              image: 'images/image (3).png',
                              isBooked: true,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomCard(
                          height: 220,
                          width: 220,
                          image: 'images/image (7).png',
                          isBooked: true,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCard(
                              height: 100,
                              width: 120,
                              image: 'images/image (7).png',
                              isBooked: true,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomCard(
                              height: 100,
                              width: 120,
                              image: 'images/image (5).png',
                              isBooked: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          height: 100,
                          width: 120,
                          image: 'images/image (4).png',
                          isBooked: true,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomCard(
                          height: 100,
                          width: 220,
                          image: 'images/image (3).png',
                          isBooked: true,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomCard(
                          height: 100,
                          width: 120,
                          image: 'images/image (2).png',
                          isBooked: true,
                        ),
                      ],
                    )
                  ]),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

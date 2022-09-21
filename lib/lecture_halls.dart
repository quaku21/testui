import 'package:flutter/material.dart';
import 'package:testui/styles.dart';

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
          //      padding: const EdgeInsets.only(left: 300, right: 300),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Lecture Halls'),
                Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 120,
                      //width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image (3).png'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 220,
                      //width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image (3).png'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      //width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image (3).png'),
                      ),
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
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.red,
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('images/image (3).png'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.red,
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('images/image (3).png'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 220,
                      width: 220,
                      //  width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image (3).png'),
                      ),
                    ),
                    Column(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.red,
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('images/image (3).png'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.red,
                          child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('images/image (3).png'),
                          ),
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
                    Container(
                      height: 100,
                      width: 120,
                      //width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image (3).png'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 220,
                      //width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image (3).png'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      //width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.red,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image (3).png'),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

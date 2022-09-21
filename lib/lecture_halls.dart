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
                        InkWell(
                          onTap: (() {}),
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 120,
                                //width: MediaQuery.of(context).size.width * 0.3,
                                color: Colors.red,
                                child: const Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image (4).png'),
                                ),
                              ),
                              Positioned(
                                left: 90,
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                        radius: 2,
                                        backgroundColor: Colors.green),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (() {}),
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 220,
                                //width: MediaQuery.of(context).size.width * 0.3,
                                color: Colors.red,
                                child: const Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image(1).png'),
                                ),
                              ),
                              Positioned(
                                left: 190,
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                        radius: 2, backgroundColor: Colors.red),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (() {}),
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 120,
                                //width: MediaQuery.of(context).size.width * 0.3,
                                color: Colors.red,
                                child: const Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image (6).png'),
                                ),
                              ),
                              Positioned(
                                left: 90,
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                        radius: 2,
                                        backgroundColor: Colors.green),
                                  ),
                                ),
                              )
                            ],
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
                            InkWell(
                              onTap: (() {}),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 120,
                                    //width: MediaQuery.of(context).size.width * 0.3,
                                    color: Colors.red,
                                    child: const Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/image (8).png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 90,
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: CircleAvatar(
                                            radius: 2,
                                            backgroundColor: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Stack(
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
                                  Positioned(
                                    left: 90,
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: CircleAvatar(
                                            radius: 2,
                                            backgroundColor: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (() {}),
                          child: Stack(
                            children: [
                              Container(
                                height: 220,
                                width: 220,
                                //width: MediaQuery.of(context).size.width * 0.3,
                                color: Colors.red,
                                child: const Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image (7).png'),
                                ),
                              ),
                              Positioned(
                                left: 190,
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                        radius: 2,
                                        backgroundColor: Colors.green),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (() {}),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 120,
                                    //width: MediaQuery.of(context).size.width * 0.3,
                                    color: Colors.green,
                                    child: const Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/image (6).png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 90,
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: CircleAvatar(
                                            radius: 2,
                                            backgroundColor: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 120,
                                    //width: MediaQuery.of(context).size.width * 0.3,
                                    color: Colors.red,
                                    child: const Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/image (5).png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 90,
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: CircleAvatar(
                                            radius: 2,
                                            backgroundColor: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
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
                        InkWell(
                          onTap: (() {}),
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 120,
                                //width: MediaQuery.of(context).size.width * 0.3,
                                color: Colors.red,
                                child: const Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image (4).png'),
                                ),
                              ),
                              Positioned(
                                left: 90,
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                        radius: 2, backgroundColor: Colors.red),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (() {}),
                          child: Stack(
                            children: [
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
                              Positioned(
                                left: 190,
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                        radius: 2, backgroundColor: Colors.red),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (() {}),
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 120,
                                //width: MediaQuery.of(context).size.width * 0.3,
                                color: Colors.red,
                                child: const Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/image (2).png'),
                                ),
                              ),
                              Positioned(
                                left: 90,
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                        radius: 2, backgroundColor: Colors.red),
                                  ),
                                ),
                              )
                            ],
                          ),
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

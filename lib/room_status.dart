import 'package:flutter/material.dart';
import 'package:testui/styles.dart';

class RoomStatus extends StatefulWidget {
  const RoomStatus({
    super.key,
    required this.accomodation,
    required this.image,
    required this.isBooked,
    required this.name,
    required this.otherImages,
  });
  static const String id = "RoomStatus";
  final String image;
  final bool isBooked;
  final String name;
  final String accomodation;
  final String otherImages;
  @override
  State<RoomStatus> createState() => _RoomStatusState();
}

class _RoomStatusState extends State<RoomStatus> {
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
          child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            Text(
              'Lecture Halls',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500,
                    width: 643,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(widget.image),
                        ),
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 245,
                          width: 487,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(widget.otherImages),
                              ),
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 245,
                          width: 487,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(widget.otherImages),
                              ),
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'About this Hall',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. \nSed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. \nMaecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, \nper inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. \nDonec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. \nMorbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. \nSed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. \nMaecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, \nper inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. \nDonec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. \nMorbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.',
                        style: TextStyle(fontSize: 16),
                        maxLines: 20,
                        softWrap: false,
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black26,
                        width: 1,
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Booking Status',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // MaterialButton(
                              //   minWidth: 400,
                              //   height: 50,
                              //   onPressed: () {},
                              //   color: Colors.green,
                              //   child: const Text(
                              //     'Booked',
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize: 20,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                color: const Color(0xFF1D973F),
                                child: const Center(
                                    child: Text('Booked',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Date of Booking',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF5F6F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 60,
                                        color: const Color(0xFF152C5B),
                                        child: const Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Text(
                                          '             20th October, 2022     ')
                                    ],
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                minWidth: 400,
                                height: 50,
                                onPressed: () {},
                                color: const Color(0xFF3252DF),
                                child: const Text(
                                  'Overide Booking',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      'Only available to verified Lecturers'))
                            ],
                          ),
                        ]),
                  ),
                ))
              ],
            ),
          ],
        ),
      )),
    );
  }
}

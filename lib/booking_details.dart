import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testui/custom_widgets/custom_card.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});
  static const String id = "RoomStatus";

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Booking Success',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  height: 1),
            ),
            const CustomCard(
              height: 400,
              width: 420,
              image: 'images/3959915.jpg',
              accomodation: '129',
              otherImages: 'images/image (4).png',
              name: 'Lecture Hall G1',
              isBooked: false,
            ),
            const Text(
              'Booking Details',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  height: 1),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Room Number',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text('Lecture halls G1'),
                      )
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date of Booking',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text('24th Setember,2022'),
                      )
                    ],
                  ),
                  Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Time Booked',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text('12:00pm-2:00pm'),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 20,
          ),
          Text(
            'Booking Success',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w900,
                height: 1),
          ),
          Center(
              child: Image(
            image: AssetImage('images/3959915.jpg'),
          )),
          Text(
            'Booking Details',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w900,
                height: 1),
          )
        ],
      ),
    );
  }
}

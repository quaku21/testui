import 'package:flutter/material.dart';
import 'package:testui/room_status.dart';

class CustomCard extends StatefulWidget {
  const CustomCard(
      {Key? key,
      required this.image,
      required this.isBooked,
      required this.width,
      required this.height,
      required this.name,
      required this.accomodation,
      required this.otherImages})
      : super(key: key);

  final String image;
  final bool isBooked;
  final double width;
  final double height;
  final String name;
  final String accomodation;
  final String otherImages;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RoomStatus(
                    accomodation: widget.accomodation,
                    isBooked: widget.isBooked,
                    name: widget.name,
                    image: widget.image,
                    otherImages: widget.otherImages,
                  )),
        );
      }),
      child: Stack(
        children: [
          Container(
            height: widget.height,
            width: widget.width,
            //width: MediaQuery.of(context).size.width * 0.3,
            color: Colors.red,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(widget.image),
            ),
          ),
          Positioned(
            left: widget.width - 30,
            child: Container(
              height: 20,
              width: 30,
              decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                    radius: 2,
                    backgroundColor:
                        widget.isBooked ? Colors.red : Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }
}

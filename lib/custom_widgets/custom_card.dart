import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.image,
      required this.isBooked,
      required this.width,
      required this.height})
      : super(key: key);

  final String image;
  final bool isBooked;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Stack(
        children: [
          Container(
            height: height,
            width: width,
            //width: MediaQuery.of(context).size.width * 0.3,
            color: Colors.red,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
          Positioned(
            left: width - 30,
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
                    backgroundColor: isBooked ? Colors.red : Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }
}

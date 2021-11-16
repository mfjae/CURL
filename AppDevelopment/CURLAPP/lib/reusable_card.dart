import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key key, @required this.colour, this.cardChild})
      : super(key: key);
  // const ReusableCard({@required this.colour, this.cardChild})
  // : super(key: key);

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.3),
            //offset: const Offset(-10.0, 0.0),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
    );
  }
}

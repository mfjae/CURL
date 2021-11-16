import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './reusable_card.dart';
import './icon_content.dart';

const activeCardColour = Color(0xffff5722);

class CoursePage extends StatelessWidget {
  const CoursePage({Key key}) : super(key: key);

  final url = "https://www.musictheory.net/lessons";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffef8354),
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.3),
                    offset: const Offset(-10.0, 0.0),
                    blurRadius: 20.0,
                    spreadRadius: 4.0),
              ],
              color: const Color(0xffff5722),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 110,
                  left: 20,
                  child: Text(
                    "Music",
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                      color: Color(0xffff5722),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Course Description',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              //color: Color(0xffffffff),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color(0xffff5722),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.3),
                    offset: const Offset(-10.0, 0.0),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: const Text(
                'In this course you will learn the basics/fundamentals of music ranging from topics such as: scales and key signature all the way to intervals & chord progressions.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 21,
                  wordSpacing: 1,
                  height: 1.5,
                ),
              ),
            ),
          ),
          const Text(
            'Course Curriculum',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              //color: Color(0xffffffff),
            ),
          ),
          const Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
        ],
      ),
    );
  }

  void launchURL() async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}

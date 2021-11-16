import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './coursepage.dart';
import './icon_content.dart';
import './reusable_card.dart';

const activeCardColour = Color(0xffff5722);

class Courses extends StatelessWidget {
  const Courses({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f225a),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.3),
                  //offset: const Offset(-10.0, 0.0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
              color: const Color(0xff363f93),
            ),
            child: Stack(
              children: const [
                Positioned(
                  top: 70,
                  left: 20,
                  child: Text(
                    "BROWSE" "\n" "CATEGORIES",
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                      color: Color(0xffffffff),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CoursePage(),
                        ),
                      );
                    },
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.music,
                        label: 'Music',
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    //return Container();
  }
}

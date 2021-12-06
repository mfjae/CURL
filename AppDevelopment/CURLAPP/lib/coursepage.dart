import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// import './reusable_card.dart';
// import './icon_content.dart';
import './curriculumname.dart';
import './topicdescription.dart';

const activeCardColour = Color(0xffff5722);

class CoursePage extends StatefulWidget {
  const CoursePage({Key key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final url = "https://www.musictheory.net/lessons/10";

  var value = false;

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
          Expanded(
            child: ListView(
              children: [
                //buildCheckbox(),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Basics',
                    style: TextStyle(
                      //fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      //color: Color(0xffffffff),
                    ),
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: const CurriculumName(
                      topic: 'The Staff, Clefs, and Ledger Lines',
                    ),
                    children: [
                      ListTile(
                        leading: Checkbox(
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                        onTap: launchURL,
                        title: const TopicDescription(
                          topicDescription:
                              'Learn about how musical notes, how they are written and the manner in which they are drawn and read',
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: const CurriculumName(
                      topic: 'Note Duration',
                    ),
                    children: [
                      ListTile(
                        leading: Checkbox(
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                        onTap: launchURL,
                        title: const TopicDescription(
                          topicDescription:
                              'Learn about the five types of notes and how flags affect note duration',
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: const CurriculumName(
                      topic: 'Measures and Time Signature',
                    ),
                    children: [
                      ListTile(
                        leading: Checkbox(
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                        onTap: () async {
                          await canLaunch(
                                  "https://www.musictheory.net/lessons/12")
                              ? await launch(
                                  "https://www.musictheory.net/lessons/12")
                              : throw 'Could not launch "https://www.musictheory.net/lessons/12"';
                        },
                        title: const TopicDescription(
                          topicDescription:
                              'Learn about measures and how many notes each can contain',
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: const CurriculumName(
                      topic: 'Rest Duration',
                    ),
                    children: [
                      ListTile(
                        leading: Checkbox(
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                        onTap: () async {
                          await canLaunch(
                                  "https://www.musictheory.net/lessons/13")
                              ? await launch(
                                  "https://www.musictheory.net/lessons/13")
                              : throw 'Could not launch "https://www.musictheory.net/lessons/12"';
                        },
                        title: const TopicDescription(
                          topicDescription:
                              'Learn about the different types of rest',
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    title: const CurriculumName(
                      topic: 'Dot & Ties',
                    ),
                    children: [
                      ListTile(
                        leading: Checkbox(
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                        onTap: () async {
                          await canLaunch(
                                  "https://www.musictheory.net/lessons/14")
                              ? await launch(
                                  "https://www.musictheory.net/lessons/14")
                              : throw 'Could not launch "https://www.musictheory.net/lessons/12"';
                        },
                        title: const TopicDescription(
                          topicDescription:
                              'Learn how dots and ties modify the duration of notes',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /*Widget buildCheckbox() => Checkbox(
        value: value,
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
        },
      );*/

  void launchURL() async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}

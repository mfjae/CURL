import 'package:flutter/material.dart';

class CurriculumName extends StatelessWidget {
  const CurriculumName({Key key, @required this.topic}) : super(key: key);
  final String topic;

  @override
  Widget build(BuildContext context) {
    return Text(
      topic,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        //color: Color(0xffffffff),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TopicDescription extends StatelessWidget {
  const TopicDescription({Key key, @required this.topicDescription})
      : super(key: key);

  final String topicDescription;
  @override
  Widget build(BuildContext context) {
    return Text(
      topicDescription,
      style: const TextStyle(
        //fontFamily: 'Montserrat',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        //color: Color(0xffffffff),
      ),
    );
  }
}

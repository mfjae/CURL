import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  final url = "https://www.musictheory.net/lessons";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Text(
                'Music',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            const Expanded(
              flex: 1,
              child: Text('Course Description',
                  style: TextStyle(fontSize: 20), textAlign: TextAlign.left),
            ),
            const Expanded(
              flex: 1,
              child: Text('Curriculum',
                  style: TextStyle(fontSize: 20), textAlign: TextAlign.left),
            ),
            Center(
              child: RaisedButton(
                onPressed: launchURL,
                child: const Text('click here'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchURL() async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}

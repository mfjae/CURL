import 'package:flutter/material.dart';

import './coursepage.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Browse Categories',
                style: TextStyle(fontSize: 40),
                //textAlign: TextAlign.center,
              ),
              RaisedButton(
                child: const Text('Music'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CoursePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
    //return Container();
  }
}

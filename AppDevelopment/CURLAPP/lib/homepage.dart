import 'package:flutter/material.dart';
import './courses.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 40),
                //textAlign: TextAlign.center,
              ),
              const Text(
                'Start Learning',
                style: TextStyle(fontSize: 20),
              ),
              RaisedButton(
                child: const Text('Start'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Courses()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

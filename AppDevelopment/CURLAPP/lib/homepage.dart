import 'package:flutter/material.dart';
import './courses.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff1f225a),
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
              color: const Color(0xff363f93),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
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
                    "Welcome",
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1.5,
                      color: Color(0xFF363f93),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 200),
          const Text(
            'Start Learning',
            style: TextStyle(
              //color: Colors.white,
              fontSize: 22,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              child: const Text(
                'Start',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Courses()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

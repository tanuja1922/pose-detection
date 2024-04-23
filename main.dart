import 'package:flutter/material.dart';
import 'about.dart';
import 'about1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textButton = TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => About1()), // Navigate to About1
        );
      },
      style: TextButton.styleFrom(
        backgroundColor: Color.fromRGBO(228, 199, 44, 1),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(
        'About',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Inter',
          fontStyle: FontStyle.italic,
          fontSize: 48,
        ),
      ),
    );

    var textButton2 = textButton;
    var textButton22 = textButton2;
    var textButton222 = textButton22;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 1024,
            color: Color.fromRGBO(18, 0, 0, 1),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 89,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 89,
                    color: Color.fromRGBO(228, 199, 44, 1),
                  ),
                  Positioned(
                    top: 17,
                    left: 44,
                    child: Text(
                      'Yoga',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.italic,
                        fontSize: 48,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 17,
                    right: 20,
                    child: textButton222,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 385,
            child: Container(
              width: 705,
              height: 80,
              child: Container(
                width: double.infinity,
                height: 80,
                color: Color.fromRGBO(18, 0, 0, 1),
                child: Center(
                  child: Text(
                    'A Yoga AI Trainer',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 314,
            left: 283,
            child: Container(
              width: 905,
              height: 601,
            ),
          ),
          Positioned(
            top: 418,
            left: 341,
            child: ElevatedButton(
              onPressed: () {
                // Add your action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Let’s Start',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.italic,
                  fontSize: 32,
                ),
              ),
            ),
          ),
          Positioned(
            top: 570,
            left: 341,
            child: Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  onPressed: () {
                    // Add your action here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PoseAppTutorial()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text(
                    'Tutorial',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.italic,
                      fontSize: 32,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

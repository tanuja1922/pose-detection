import 'package:flutter/material.dart';

class About1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            color: Color.fromRGBO(228, 154, 44, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 374.0,
                  height: 100.0,
                  
                  child: Center(
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 64.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 26.0),
                Container(
                  width: double.infinity,
                  height: 300.0,
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'This is a realtime AI based Yoga Trainer which detects your pose how well you are doing. I created this as a personal project, and I have also deployed this project so people can use it and mainly the developers can who are learning AI can learn from this project and make their own AI or they can also improve in this project. This is an open source project, The code is available on the GitHub - https://github.com/harshbhatt7585/YogaIntelliJ This AI first predicts keypoints or coordinates of different parts of the body(basically where they are present in an image) and then it use another classification model to classify the poses if someone is doing a pose and if AI detects that pose more than 95% probability and then it will notify you are doing correctly(by making virtual skeleton green). I have used Tensorflow pretrained Movenet Model To Predict the Keypoints and building a neural network top of that which uses these coordinates and classify a yoga pose. I have trained the model in python because of tensorflowJS we can leverage the support of browser so I converted the keras/tensorflow model to tensorflowJS.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(14, 8, 14, 0), // Adjust padding here
                  color: Color.fromRGBO(228, 154, 44, 1),
                  child: Text(
                    'About Developer\nWe are team yogaintelliJ, Full Stack Developers, AI Enthusiastic, Content Creators, Tutors. We love to work with technology and share our knowledge on our YouTube channel. We hope this project will help you.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Kanit',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 26.0),
                Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Youtube',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'GitHub',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

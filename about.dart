import 'package:flutter/material.dart';

class PoseAppTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial'),
        ),

        body: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Container(
            width: double.infinity,
            color: Color.fromRGBO(228, 154, 44, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20), // Add some space at the top
                Container(
                  width: 478,
                  height: 96,
                  margin: EdgeInsets.only(left: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 478,
                        height: 69,
                        color: Color.fromRGBO(228, 154, 44, 1),
                      ),
                      Positioned(
                        top: 0,
                        left: 14,
                        child: Text(
                          'Basic Tutorials',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontFamily: 'Kanit',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Add some space between sections
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  color: Color.fromRGBO(228, 154, 44, 1),
                  child: Text(
                    '1. When App ask for permission of camera, allow it to access to capture pose.\n'
                    '2. Select what pose you want to do in the dropdown.\n'
                    '3. Read Instructions of that pose so you will know how to do that pose.\n'
                    '4. Click on Start pose and see the image of the that pose in the right side and replicate that image in front of camera.\n'
                    '5. If you will do correctly the skeleton over the video will become green in color and sound will start playing',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Kanit',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space between sections
                Container(
                  width: 621,
                  height: 96,
                  margin: EdgeInsets.only(left: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 614,
                        height: 69,
                        color: Color.fromRGBO(228, 154, 44, 1),
                        margin: EdgeInsets.fromLTRB(4, 16, 0, 0),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Camera Not Working?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 64,
                            fontFamily: 'Kanit',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Add some space between sections
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(28, 32, 0, 0),
                  color: Color.fromRGBO(228, 154, 44, 1),
                  child: Text(
                    'Solution 1. Make sure you have allowed the permission of camera, if you have denied the permission, go to settings '
                    'of your browser to allow the access of camera to the application.\n'
                    'Solution 2. Make sure no any other application is not accessing camera at that time, if yes, close that application.\n'
                    'Solution 3. Try to close all the other opened browsers.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Kanit',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(PoseAppTutorial());
}

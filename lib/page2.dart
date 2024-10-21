import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String name;
  final String school;
  final String about;
  final String history;
  final String skill;

  const Page2({Key? key, required this.name, required this.school, required this.about, required this.history, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Store MediaQuery size for reuse
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Color.fromRGBO(255, 237, 202, 1),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: size.width,
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                color: Color.fromRGBO(255, 237, 202, 1),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Adjusts to content size
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 70.0,
                        backgroundImage:
                            AssetImage('assets/images/Lastriantini.jpg'),
                      ),
                      SizedBox(height: 16.0), // Add spacing
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 16.0), // Add spacing
                      Text(
                        school,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 16.0), // Add spacing
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        color: Color.fromRGBO(255, 212, 127, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            // Wrap the Text widgets in a Column to allow multiple children
                            children: [
                              Text(
                                "About: ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      10), // Add spacing between the Text widgets
                              Text(
                                about,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.brown[900],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0), // Add spacing
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            // Wrap the Text widgets in a Column to allow multiple children
                            children: [
                              Text(
                                "history:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      10), // Add spacing between the Text widgets
                              Text(
                                history,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.brown[900],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0), // Add spacing
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            // Wrap the Text widgets in a Column to allow multiple children
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 100.0),
                                color: Color.fromRGBO(255, 215, 129,
                                    1), // Use Container to apply color
                                child: Text(
                                  "Skill:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                              //  Add spacing between the Text widgets
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 50.0),
                                child: Text(
                                  skill,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.brown[900],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

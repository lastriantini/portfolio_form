import 'package:flutter/material.dart';
import 'page2.dart'; // Import file Page2 yang berisi halaman kedua

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _schoolController = TextEditingController();
  TextEditingController _aboutController = TextEditingController();
  TextEditingController _historyController = TextEditingController();
  TextEditingController _skillController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "INPUT DATA",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _schoolController,
              decoration: InputDecoration(
                hintText: "Enter your school",
                labelText: "School",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _aboutController,
              decoration: InputDecoration(
                hintText: "Enter your about",
                labelText: "About",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _historyController,
              decoration: InputDecoration(
                hintText: "Enter your history",
                labelText: "History",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _skillController,
              decoration: InputDecoration(
                hintText: "Enter your skill",
                labelText: "Skill",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Page2(
                      name: _nameController.text,
                      school: _schoolController.text,
                      about: _aboutController.text,
                      history: _historyController.text,
                      skill: _skillController.text,
                    ),
                  ),
                );
              }, 
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}

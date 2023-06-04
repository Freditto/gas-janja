import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("About"),
        backgroundColor: const Color.fromARGB(255, 76, 175, 147),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
             SizedBox(height: 20),
            Center(
              child: Image.asset(
                  'assets/gaslogo.png',
                  width: 200, // set the desired width
                  // height: 200, // set the desired height
                ),
            ),
             SizedBox(height: 20),
              Center(
              child: Text(
                  "Version 1.0.0",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
              ),

              SizedBox(height: 20),
              Center(
              child: Text(
                  "2023",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
              ),

              SizedBox(height: 20),
              Center(
              child: Text(
                  "Copyright",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
              ),
            SizedBox(height: 10),
          ]),
      ),
    );
  }
}
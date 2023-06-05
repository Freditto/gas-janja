import 'package:flutter/material.dart';

class DeveloperScreen extends StatefulWidget {
  @override
  State<DeveloperScreen> createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Contact Developer"),
        backgroundColor: const Color.fromARGB(255, 76, 175, 147),
        foregroundColor: Colors.white,
        elevation: 0,
        // actions: [
        //   PopupMenuButton<String>(
        //     onSelected: (String value) {
        //       // Handle menu item selection
        //     },
        //     itemBuilder: (BuildContext context) {
        //       return <PopupMenuEntry<String>>[
        //         PopupMenuItem<String>(
        //           value: 'Option 1',
        //           child: Text('Option 1'),
        //         ),
        //         PopupMenuItem<String>(
        //           value: 'Option 2',
        //           child: Text('Option 2'),
        //         ),
        //         PopupMenuItem<String>(
        //           value: 'Option 3',
        //           child: Text('Option 3'),
        //         ),
        //       ];
        //     },
        //   ),
        // ],
      ),

      body: Column(
      children: [
        
        SizedBox(height: 70.0),
        CircleAvatar(
          backgroundImage: AssetImage('assets/profiledev.png'),
          radius: 70.0,
        ),
        SizedBox(height: 20.0),
        Text(
          "Fred Herbert Ibambilo",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30.0,
          ),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 20.0),
            Column(
              children: [
                Text(
                  "29",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "121.9k",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Followers",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "7.5M",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Like",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(width: 20.0),
          ],
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Follow",
                style: TextStyle(fontSize: 18.0),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(140.0, 55.0),
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            OutlinedButton(
              onPressed: () {},
              child: Icon(Icons.mail_outline_outlined),
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  fixedSize: Size(50.0, 60.0)),
            )
          ],
        ),
        SizedBox(height: 20.0),
      ]
    ),
    );
  }
}
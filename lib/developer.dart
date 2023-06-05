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
    );
  }
}
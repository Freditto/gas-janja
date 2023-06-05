import 'package:flutter/material.dart';

class ComplainScreen extends StatefulWidget {
  @override
  State<ComplainScreen> createState() => _ComplainScreenState();
}

class _ComplainScreenState extends State<ComplainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Send Complains"),
        backgroundColor: const Color.fromARGB(255, 76, 175, 147),
        elevation: 0,
      ),
      body: SafeArea(
            child: Center(
          child: CheckboxWidget(),
        ))
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {
  Map<String, bool> numbers = {
    'App Crashes': false,
    'Slow Performance': false,
    'Login Issues': false,
    'Missing Features': false,
    'Data Loss': false,
    'Unresponsive Support': false,
    'Inappropriate Content': false,
  };

  var holder_1 = [];

  getItems() {
    numbers.forEach((key, value) {
      if (value == true) {
        holder_1.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(holder_1);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      
      Expanded(
        child: ListView(
          children: numbers.keys.map((String key) {
            return CheckboxListTile(
              title: Text(key),
              value: numbers[key],
              activeColor: Colors.green,
              checkColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  numbers[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),

      const SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: MaterialButton(
          elevation: 0,
          color: Color.fromARGB(255, 76, 175, 147),
          height: 50,
          minWidth: 500,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            // _submit();
            // _login();
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => AdminDasboard(),
            //   ),
            // );
            // _add_job_API();
          },
          child: const Text(
            'Send Complains',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),

      const SizedBox(
        height: 50,
      ),
    ]);
  }
}

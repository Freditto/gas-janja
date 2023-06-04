import 'package:flutter/material.dart';
import 'package:gas_janja/navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _moveToHome() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => NavigatorWidget()),
        (Route<dynamic> _) => false);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToHome();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/gaslogo.png',
                width: 200,
                height: 200,
              ),
              Text(
                "GasJanja",
                style: TextStyle(
//                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              SizedBox(
                height: 155,
              )
            ],
          ),
        ),
      ),
    );
  }
}


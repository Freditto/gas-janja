import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class ContactScreen extends StatefulWidget {
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Contact Us"),
        backgroundColor: const Color.fromARGB(255, 76, 175, 147),
        elevation: 0,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //For default Button
              FlutterSocialButton(
                title: 'Email',
                onTap: () {},
              ),
              const SizedBox(
                height: 2,
              ),

              //For facebook Button
              FlutterSocialButton(
                title: 'Facebook',
                onTap: () {},
                buttonType: ButtonType.facebook,
              ),
              const SizedBox(
                height: 2,
              ),

              //For google Button
              FlutterSocialButton(
                title: 'Google',
                onTap: () {},
                buttonType: ButtonType.google,
              ),
              const SizedBox(
                height: 2,
              ),

              //For phone Button
              FlutterSocialButton(
                title: 'Call',
                onTap: () {},
                buttonType: ButtonType.phone,
              ),

              const SizedBox(
                height: 2,
              ),

              //For Whatsapp Button
              FlutterSocialButton(
                title: 'Whatsapp',
                onTap: () {},
                buttonType: ButtonType.whatsapp,
              ),
              const SizedBox(
                height: 2,
              ),

              const Divider(
                color: Colors.black,
                thickness: 2.5,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
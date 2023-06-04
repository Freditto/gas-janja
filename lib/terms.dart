import 'package:flutter/material.dart';

class TermsandPolicyScreen extends StatefulWidget {
  @override
  State<TermsandPolicyScreen> createState() => _TermsandPolicyScreenState();
}

class _TermsandPolicyScreenState extends State<TermsandPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Terms and Policy"),
        backgroundColor: const Color.fromARGB(255, 76, 175, 147),
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'The app is described briefly, and users are informed that by accessing or using the app, they agree to the terms. Users are responsible for the content they create, upload, or share, and are prohibited from sharing illegal, harmful, or offensive content. User accounts may be required for certain features, and users must provide accurate information and protect their account credentials. The app and its content are the property of the company and protected by copyright and trademark laws. The companys privacy policy explains how personal information is collected, used, and disclosed. The company is not liable for any damages. The terms may be modified with notice. Contact information is provided. Its important to customize these terms and consult with a legal professional to ensure compliance with applicable laws.',
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
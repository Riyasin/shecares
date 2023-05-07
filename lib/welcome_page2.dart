import 'package:flutter/material.dart';
import 'package:she_cares/health_tips.dart';
import 'package:she_cares/questionaire/questionaire1.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xfffce8c0), Color(0xffef6969)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Images/2-removebg-preview.png',
              height: 350,
              width: 350,
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Welcome y/n!\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'You have successfully created your account on SheCares!\n\n'),
                    TextSpan(
                        text: 'Let’s Begin your Healthy Fertility Journey.\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'We will be collecting data based on your input to give you reminders to change your menstrual product from time to time and remind you to stay hydrated.\n'
                            'Also, we we are here to keep a track of your periods so that you can live a healthy life.'),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuestionPage()),
          );
        },
        child: const Icon(Icons.arrow_forward),
        backgroundColor: Color(0xffef6969),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

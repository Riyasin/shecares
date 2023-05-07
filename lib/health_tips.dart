import 'package:flutter/material.dart';

class HealthTipsPage extends StatelessWidget {
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
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'Health Tips',
                    style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                  ),
                  const SizedBox(height: 16.0),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '1. Drink plenty of water\n2. Eat balanced diet with a focus on iron rich food\n3. Avoid Caffeine\n4. Get enough sleep\n5. Do Exercise\n6. Avoid smoking and alcohol\n7. Practice good hygiene\n8. Use different menstrual products to avoid infection',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Image.asset('assets/Images/_-removebg-preview.png',),
            // ),
          ],
        ),
      ),
    );
  }
}

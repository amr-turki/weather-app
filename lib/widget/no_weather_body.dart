import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(fontSize: 30),
            ),
            Text('searching now 🔍', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}

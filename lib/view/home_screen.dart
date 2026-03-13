import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Weather App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}

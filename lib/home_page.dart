// Prabhat Kumar Sing
// Registration Number: 200545457

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'), // Title of the app bar
        centerTitle: true, // Center the title horizontally
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center children vertically
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children horizontally
          children: <Widget>[
            _navigationButton(context, 'Calculator', '/calculator'), // Calculator navigation button
            SizedBox(height: 20), // Empty space with a specific height
            _navigationButton(context, 'Notes', '/notes'), // Notes navigation button
            SizedBox(height: 20), // Empty space with a specific height
            _navigationButton(context, 'Weather', '/weather'), // Weather navigation button
          ],
        ),
      ),
    );
  }

  // Method to create a navigation button
  Widget _navigationButton(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40), // Padding around the button
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, route), // Navigate to the specified route
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue), // Button background color
          foregroundColor: MaterialStateProperty.all(Colors.white), // Button text color
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16)), // Button padding
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Button border radius
            ),
          ),
        ),
        child: Text(
          title, // Button text
          style: TextStyle(fontSize: 20), // Button text style
        ),
      ),
    );
  }
}

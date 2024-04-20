// Prabhat Kumar Sing
// Registration Number: 200545457

import 'package:flutter/material.dart';
import 'home_page.dart'; // Assuming you have a file named home_page.dart with a HomePage widget

class GreetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold widget provides a basic structure for material design visual layout structure
      body: Column(
        // Column widget lays out its children in a vertical array
        mainAxisAlignment: MainAxisAlignment.center, // Center children vertically
        crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children horizontally
        children: <Widget>[
          // List of widgets as children of the column
          Image.asset(
            // Display an image from an asset
            'assets/welcome.png', // Path to the image asset
            height: 300, // Height of the image
            fit: BoxFit.cover, // Scale the image to cover the entire container
          ),
          SizedBox(height: 30), // Empty space with a specific height
          Text(
            // Display text
            'Welcome to My Flutter App!', // Text content
            textAlign: TextAlign.center, // Align text to the center
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold), // Text style
          ),
          SizedBox(height: 20), // Empty space with a specific height
          Padding(
            // Apply padding to its child widget
            padding: EdgeInsets.symmetric(horizontal: 70), // Symmetric padding horizontally
            child: ElevatedButton(
              // Create a button with a filled background
              style: ElevatedButton.styleFrom(
                // Define button style
                backgroundColor: Colors.deepPurple, // Background color of the button
                foregroundColor: Colors.white, // Text color of the button
                padding: EdgeInsets.symmetric(vertical: 12), // Symmetric padding vertically
                shape: RoundedRectangleBorder(
                  // Define the button's shape
                  borderRadius: BorderRadius.circular(25), // Apply rounded corners to the button
                ),
              ),
              onPressed: () {
                // Function to execute when the button is pressed
                Navigator.pushNamed(context, '/home'); // Navigate to the home page
              },
              child: Text('Get Started', style: TextStyle(fontSize: 20.0)), // Button text
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:assingment_flutter/component/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double padding = screenWidth * 0.05; // 5% of screen width for padding

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SizedBox(height: screenHeight * 0.05), // 5% of screen height
            Center(
              child: CircleAvatar(
                radius: screenWidth * 0.2, // 20% of screen width
                backgroundColor: Colors.blueAccent, // Background image
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2622/2622075.png', // Icon image
                  width: screenWidth * 0.3, // 6% of screen width
                  height: screenWidth * 0.3, // 6% of screen width
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // 2% of screen height
            TextField(
              decoration: InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: screenHeight * 0.01), // 1% of screen height
            TextField(
              decoration: InputDecoration(
                hintText: 'Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: screenHeight * 0.01), // 1% of screen height
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              obscureText: true,
            ),
            SizedBox(height: screenHeight * 0.02), // 2% of screen height
            ElevatedButton(
              onPressed: () {
                // Add your create account logic here
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02), // 2% of screen height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                backgroundColor: Colors.blue,
              ),
              child: Text('CREATE ACCOUNT', style: TextStyle(fontSize: 16.0,color: Colors.white)),
            ),
            SizedBox(height: screenHeight * 0.01), // 1% of screen height
            Center(
              child: TextButton(
                onPressed: () {
                  // Add your "Already have account" logic here
                },
                child: Text('Already have account?', style: TextStyle(color: Colors.blue,fontSize: 16)),
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // 2% of screen height
            Divider(),
            SizedBox(height: screenHeight * 0.02), // 2% of screen height

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>   LoginGoogle()),);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min, // To ensure button size wraps content
                  children: <Widget>[
                    Image.network(
                      'https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png',
                      width: screenWidth * 0.09, // 10% of screen width
                      height: screenWidth * 0.09, // 10% of screen width
                    ),
                    Text(
                      'Connect with google',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  // Add your "Already have account" logic here
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min, // To ensure button size wraps content
                  children: <Widget>[
                    Image.network(
                      'https://1000logos.net/wp-content/uploads/2017/02/Facebook-Logosu.png',
                      width: screenWidth * 0.15, // 10% of screen width
                      height: screenWidth * 0.15, // 10% of screen width
                    ),
                    Text(
                      'Connect with google',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

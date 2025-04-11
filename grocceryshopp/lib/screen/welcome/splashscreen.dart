import 'package:flutter/material.dart';
import 'package:grocceryshopp/screen/welcome/NextScreen.dart';
class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 50), // Spacer at the start
            
            Image.asset(
              "/Images/splashScreen1.png", // Ensure correct asset path
              width: 300, 
              height: 300,
            ),
             IconButton(
                  icon: Icon(Icons.arrow_forward, size: 40), // Forward arrow
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Nextscreen()));} // Navigate to NextScreen
                    ),
            SizedBox(width: 50), // Space between image and text


            SizedBox(width: 50), 
          ],
        ),
      );
    
  }
}

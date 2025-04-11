import 'package:flutter/material.dart';
import 'package:grocceryshopp/screen/home/Homepage.dart';

class Nextscreen extends StatelessWidget {
  const Nextscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
              "/Images/splashScreen2.png", 
              width: 300, 
              height: 300,
            ),
            SizedBox(height: 20,),
                Text(
                  "WELCOME TO YOUR SHOP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "monoto",
                    fontSize: 24,
                  ),
                ),
                
                SizedBox(height: 10),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "This is a simple welcome screen. Scroll sideways to explore more.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                
                SizedBox(height: 30),
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.push( context,
                      MaterialPageRoute(builder: (context) =>Homepage()));
                  },
                  child: Text("Get Started"),
                ),
                
                SizedBox(height: 50),
              ],
            ), 
    );
  }
}
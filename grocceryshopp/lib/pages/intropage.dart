import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class intropage extends StatelessWidget {
   intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
          children: [
            //logo
            Padding(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 50.0), // Left, Top, Right, Bottom
              
                child: Image.asset('lib/image/avocadologo.png',
                 width: 200, 
                    height: 100,),
              
            ),
            //text
            const Padding(
              padding:EdgeInsets.all(24.0),
              child: Text("We deliver \ngrocieries at your\n doorstep",
              textAlign: TextAlign.center,
              style:GoogleFonts.notoSer if(),
            )),
            //subtitle
            Text("fresh items everyday",
            style: TextStyle(
              color: Colors.grey,
            ),),
            //get started button
                         Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30)
              ),
              padding: EdgeInsets.all(10),
              child: Text("Get Started",
              style: TextStyle(
                color: Colors.white,
              ),),
            ),
                   Spacer(),
          ],
        ),
      
    );
  }
}
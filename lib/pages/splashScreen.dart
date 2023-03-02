import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "../uis/myButton.dart";
import "LoginPage.dart";
import "home_page.dart";

class SPlashScreen extends StatelessWidget {
  const SPlashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //logo
        children: [
          Padding(
              padding: EdgeInsets.only(left:80.0, right: 80.0, top: 160.0),
              child: Image.asset("assets/splash.png"),
          ),

          Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "Welcome to the Attachment Management System",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 60,),

          //get started
          myButton(
              onTap: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(
                  builder: (context){
                    return LoginPage();
                  }
                ),
                );
              },
              text: "Get Started",
          ),

          Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "Powered by @haka",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

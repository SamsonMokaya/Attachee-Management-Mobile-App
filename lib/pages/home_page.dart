import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 40,),

            //greetings
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome User,",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Color(0xffa29aac),
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    icon: Image.asset("assets/profile.png"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            //Some words
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                  "Sydney Temba - Attachee",
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )

            //divider

          ],
        ),

      ),

    );
  }
}

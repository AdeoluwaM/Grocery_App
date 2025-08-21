import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(
              left: 80.0,
              right: 80,
              bottom: 40,
              top: 160,
            ),
            // wrap image in circle avatar
            child: Image.asset('lib/images/avocado.png'),
          ),
          // We deliver groceries to your doorstep
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries to your doorstep",
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 24),
          // fresh Items everyday
          Text(
            "Fresh Items Everyday",
            style: TextStyle(color: Colors.grey.shade600),
          ),
          Spacer(),
          // get started button
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Text("Get Started", style: TextStyle(color: Colors.white)),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48),
            // Good Morning
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning"),
            ),
            SizedBox(height: 4),
            // Let's order Fresh Items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order Fresh Items for you",
                style: GoogleFonts.notoSerif(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            SizedBox(height: 24),
            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(thickness: 1),
            ),
            SizedBox(height: 24),
            // Fresh Items + grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh Items", style: TextStyle(fontSize: 16)),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GroceryItemTile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

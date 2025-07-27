import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
  });

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

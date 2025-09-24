import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String time;
  final String imageUrl;
  final double rating;

  const RecipeCard({
    Key? key,
    required this.title,
    required this.time,
    required this.imageUrl,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ... your card UI code goes here using the parameters
      // e.g., using a Column and Image.asset or NetworkImage
      // to display the data passed in.
    );
  }
}

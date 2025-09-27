import 'package:flutter/material.dart';
import 'recipe_card.dart';

class RecipeCardShowcase extends StatelessWidget {
  final int count;

  const RecipeCardShowcase({super.key, this.count = 4});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: List.generate(
          count,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: const RecipeCard(),
          ),
        ),
      ),
    );
  }
}

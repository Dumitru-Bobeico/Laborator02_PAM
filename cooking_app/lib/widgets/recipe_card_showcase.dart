import 'package:flutter/material.dart';
import 'recipe_card.dart';
import 'package:cooking_app/resources/app_icons.dart'; // make sure you import icons

class Recipe {
  final String title;
  final String imageUrl;
  final String time;
  final double rating;

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.time,
    required this.rating,
  });
}

class RecipeCardShowcase extends StatelessWidget {
  final int count;

  const RecipeCardShowcase({super.key, this.count = 4});

  // Define the recipe list inside the showcase
  static final List<Recipe> _recipes = [
    Recipe(
      title: 'Classic Greek Salad',
      imageUrl: AppIcons.classicGreekSalad,
      time: '15 Mins',
      rating: 4.5,
    ),
    Recipe(
      title: 'Italian Pizza',
      imageUrl: AppIcons.crunchyCholeslaw,
      time: '25 Mins',
      rating: 4.7,
    ),
    Recipe(
      title: 'Fruit Bowl',
      imageUrl: AppIcons.shrimpDish,
      time: '10 Mins',
      rating: 4.2,
    ),
    Recipe(
      title: 'Sushi',
      imageUrl: AppIcons.barbecueChicken,
      time: '30 Mins',
      rating: 4.8,
    ),
    Recipe(
      title: 'Burger',
      imageUrl: AppIcons.portuguesePiri,
      time: '20 Mins',
      rating: 4.3,
    ),
    // add more recipes if needed
  ];

  @override
  Widget build(BuildContext context) {
    // Limit recipes to the count requested
    final recipesToShow = _recipes.take(count).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: recipesToShow.map((recipe) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: RecipeCard(
              title: recipe.title,
              imageUrl: recipe.imageUrl,
              time: recipe.time,
              rating: recipe.rating,
            ),
          );
        }).toList(),
      ),
    );
  }
}

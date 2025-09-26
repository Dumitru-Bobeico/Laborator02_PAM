import 'package:cooking_app/widgets/searchbar_component.dart';
import 'package:flutter/material.dart';
import '../widgets/header_component.dart';
import '../widgets/recipe_filter_bar.dart';
import '../resources/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderComponent(),
            SearchBarComponent(),
            SizedBox(height: 15),
            RecipeFilterBar(
              categories: [
                "All",
                "Indian",
                "Italian",
                "Asian",
                "Fruit",
                "Vegetables",
                "Protein",
                "Cereal",
                "Local Dishes",
              ],
            ),
          ],
        ),
      ),
    );
  }
}

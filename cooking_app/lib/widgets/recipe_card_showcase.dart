import 'package:cooking_app/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipeCardShowcase extends StatelessWidget {
  const RecipeCardShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          RecipeCard(
            image: 'images/classic_greek_salad.png',
            title: 'Classic Greek Salad',
            rating: 4.5,
            time: '15 Mins',
          ),
          RecipeCard(
            image: 'images/crunchy_nut_choleslaw.png',
            title: 'Crunchy Nut Coleslaw',
            rating: 3.5,
            time: '10 Mins',
          ),
          RecipeCard(
            image: 'images/shrimp.png',
            title: 'Shrimp Chicken Andouille Sausage Jambalaya',
            rating: 3.5,
            time: '10 Mins',
          ),
          RecipeCard(
            image: 'images/barbecue_chicken.png',
            title: 'Barbecue Chicken Jollof Rice',
            rating: 3.5,
            time: '10 Mins',
          ),
          RecipeCard(
            image: 'images/portuguese_piri.png',
            title: 'Portuguese Piri Piri Chicken',
            rating: 3.5,
            time: '10 Mins',
          ),
        ],
      ),
    );
  }
}

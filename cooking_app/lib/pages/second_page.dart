import 'package:cooking_app/resources/colors.dart';
import 'package:cooking_app/widgets/back_to_menu.dart';
import 'package:cooking_app/widgets/food_card.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(child: Column(children: [BackToMenuBar(), FoodCard()])),
    );
  }
}

import 'package:cooking_app/resources/colors.dart';
import 'package:cooking_app/widgets/back_to_menu.dart';
import 'package:cooking_app/widgets/food_card.dart';
import 'package:cooking_app/widgets/food_title.dart';
import 'package:cooking_app/widgets/user_profile_header.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            BackToMenuBar(),
            FoodCard(),
            SizedBox(height: 15),
            FoodTitleWithReviews(
              titleLine1: 'Spicy chicken burger with',
              titleLine2: 'French fries',
              reviewsCount: '13k',
            ),
            UserProfileStaticHeader(
              userName: 'Laura wilson',
              location: 'Lagos, Nigeria',
              profileImageUrl:
                  'https://images.unsplash.com/photo-1544005313-94ddf0286df2?fit=crop&w=80&q=80',
            ),
          ],
        ),
      ),
    );
  }
}

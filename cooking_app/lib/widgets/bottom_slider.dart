import 'package:cooking_app/resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSlider extends StatelessWidget {
  const BottomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> recipes = [
      {
        'title': 'Steak with tomato...',
        'author': 'James Milner',
        'time': '20 mins',
        'rating': 5.0,
        'imageAsset': 'assets/images/bottom_food01.png',
        'creatorImageAsset': 'assets/images/bottom_creator_01.png',
      },
      {
        'title': 'Pilaf sweet with lamb',
        'author': 'Laura S.',
        'time': '35 mins',
        'rating': 5.0,
        'imageAsset': 'assets/images/bottom_food01.png',
        'creatorImageAsset': 'assets/images/bottom_creator_02.png',
      },
      {
        'title': 'Rice Pilaf, Broccoli',
        'author': 'Laura S.',
        'time': '35 mins',
        'rating': 5.0,
        'imageAsset': 'assets/images/bottom_food01.png',
        'creatorImageAsset': 'assets/images/bottom_creator_02.png',
      },
      {
        'title': 'Chicken meal',
        'author': 'Laura S.',
        'time': '35 mins',
        'rating': 5.0,
        'imageAsset': 'assets/images/bottom_food01.png',
        'creatorImageAsset': 'assets/images/bottom_creator_02.png',
      },
      {
        'title': 'Stir-fry chicken',
        'author': 'Laura S.',
        'time': '35 mins',
        'rating': 5.0,
        'imageAsset': 'assets/images/bottom_food01.png',
        'creatorImageAsset': 'assets/images/bottom_creator_02.png',
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: recipes.map((recipe) {
            return Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 20.0),
              child: _RecipeCard(
                title: recipe['title'],
                author: recipe['author'],
                time: recipe['time'],
                rating: recipe['rating'],
                imageAsset: recipe['imageAsset'],
                creatorImageAsset: recipe['creatorImageAsset'],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _RecipeCard extends StatelessWidget {
  final String title;
  final String author;
  final String time;
  final double rating;
  final String imageAsset;
  final String creatorImageAsset;

  const _RecipeCard({
    required this.title,
    required this.author,
    required this.time,
    required this.rating,
    required this.imageAsset,
    required this.creatorImageAsset,
  });

  @override
  Widget build(BuildContext context) {
    const double cardWidth = 251.0;
    const double cardHeight = 200.0;
    const double imageSize = 80.0;

    return SizedBox(
      width: cardWidth,
      height: cardHeight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 110,
            margin: const EdgeInsets.only(top: imageSize / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(100),
                  blurRadius: 20,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                _buildRatingStars(rating),
                const SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(creatorImageAsset),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'By $author',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(AppIcons.clockWatch),
                    const SizedBox(width: 4),
                    Text(
                      time,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            top: 0,
            right: 10,
            child: Container(
              width: 79.95,
              height: 86,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingStars(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    bool hasHalfStar = rating - fullStars >= 0.5;

    for (int i = 0; i < 5; i++) {
      if (i < fullStars) {
        stars.add(const Icon(Icons.star, color: Colors.amber, size: 12));
      } else if (i == fullStars && hasHalfStar) {
        stars.add(const Icon(Icons.star_half, color: Colors.amber, size: 12));
      } else {
        stars.add(const Icon(Icons.star_border, color: Colors.amber, size: 12));
      }
    }
    return Row(children: stars);
  }
}

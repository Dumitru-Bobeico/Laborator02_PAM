import 'package:cooking_app/resources/app_icons.dart';
import 'package:cooking_app/resources/colors.dart';
import 'package:flutter/material.dart';

const String _imageUrl = AppIcons.classicGreekSalad;

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double cardWidth = 200.0;
    const double imageDiameter = 140.0;
    const double overlap = 20.0;

    return SizedBox(
      width: cardWidth,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: imageDiameter / 2 - overlap),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(13),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: imageDiameter / 2 + overlap),
                  const Text(
                    'Classic Greek\nSalad',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Time',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            '15 Mins',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Icon(
                          Icons.bookmark_border,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _ImageWithRating(diameter: imageDiameter, imageUrl: _imageUrl),
        ],
      ),
    );
  }
}

class _ImageWithRating extends StatelessWidget {
  final double diameter;
  final String imageUrl;

  const _ImageWithRating({required this.diameter, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: diameter,
          height: diameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(38),
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.secondary20,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.star, color: Colors.white, size: 14),
                SizedBox(width: 4),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class RecipeCardDemo extends StatelessWidget {
  const RecipeCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: RecipeCard()),
    );
  }
}

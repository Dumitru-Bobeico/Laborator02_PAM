import 'package:flutter/material.dart';
import '../resources/colors.dart';

class RecipeCard extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final String time;
  final VoidCallback? onBookmark;
  final VoidCallback? onTap;

  const RecipeCard({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.time,
    this.onBookmark,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.gray4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        splashColor: AppColors.primary100.withAlpha(50),
        child: SizedBox(
          width: 150,
          height: 176,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          image,
                          width: double.infinity,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primary100,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  rating.toString(),
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            time,
                            style: const TextStyle(
                              fontSize: 11,
                              color: AppColors.gray4,
                            ),
                          ),
                          GestureDetector(
                            onTap: onBookmark,
                            child: const Icon(
                              Icons.bookmark_border,
                              size: 18,
                              color: AppColors.gray4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8), // bottom padding
            ],
          ),
        ),
      ),
    );
  }
}

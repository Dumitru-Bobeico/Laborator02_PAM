import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final double rating;
  final int timeInMinutes;

  const FoodCard({
    super.key,
    this.imageUrl =
        'https://images.unsplash.com/photo-1568901346537-2dea8d655d49?fit=crop&w=800&q=80',
    this.rating = 4.0,
    this.timeInMinutes = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: SizedBox(
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              color: Colors.black.withAlpha(1),
              colorBlendMode: BlendMode.darken,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 48,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),

            Positioned(
              top: 10.0,
              right: 10.0,
              child: Chip(
                avatar: const Icon(Icons.star, color: Colors.white, size: 16.0),
                label: Text(
                  rating.toStringAsFixed(1),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.black54,
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
              ),
            ),

            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.access_time,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '$timeInMinutes min',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.bookmark_remove_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

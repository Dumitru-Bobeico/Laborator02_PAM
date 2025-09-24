import 'package:flutter/material.dart';

class RecipeFilterBar extends StatelessWidget {
  const RecipeFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          _buildFilterChip('All', isSelected: true),
          _buildFilterChip('Indian'),
          _buildFilterChip('Italian'),
          _buildFilterChip('Asian'),
          _buildFilterChip('Chinese'),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
        backgroundColor: isSelected ? Colors.green : Colors.grey[200],
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}

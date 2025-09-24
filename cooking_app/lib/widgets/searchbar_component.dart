// lib/components/search_bar.dart
import 'package:flutter/material.dart';

class SearchBarComponent extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchBarComponent({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[200], // A light gray background
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: 'Search recipe',
          border: InputBorder.none, // Removes the default underline
          prefixIcon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}

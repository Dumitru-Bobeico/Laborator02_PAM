import 'package:cooking_app/resources/colors.dart';
import 'package:flutter/material.dart';

class SearchBarComponent extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchBarComponent({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 255,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.gray4, width: 1.3),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image.asset(
                    'images/search-normal.png',
                    width: 18,
                    height: 18,
                  ),
                ),
                Expanded(
                  child: TextField(
                    onChanged: onChanged,
                    style: const TextStyle(fontSize: 11),
                    decoration: const InputDecoration(
                      hintText: 'Search recipe',
                      hintStyle: TextStyle(
                        color: AppColors.gray4,
                        fontSize: 11,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 5, bottom: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 48,
              height: 48,
              color: AppColors.primary100,
              child: Image.asset('images/setting-4.png'),
            ),
          ),
        ],
      ),
    );
  }
}

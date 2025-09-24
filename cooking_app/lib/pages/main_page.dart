import 'package:flutter/material.dart';
import '../widgets/header_component.dart';
import '../widgets/recipe_filter_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderComponent(),
            SizedBox(height: 10),
            RecipeFilterBar(),
            // Add other content here, like the recipe cards
          ],
        ),
      ),
    );
  }
}

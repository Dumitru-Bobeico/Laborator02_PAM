import 'package:cooking_app/widgets/searchbar_component.dart';
import 'package:flutter/material.dart';
import '../widgets/header_component.dart';
import '../resources/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(children: [HeaderComponent(), SearchBarComponent()]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/header_component.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(children: [HeaderComponent()])),
    );
  }
}

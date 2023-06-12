import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const routeName = 'recipe-detail';

  const RecipeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('RecipeDetailScreen'),
      ),
    );
  }
}

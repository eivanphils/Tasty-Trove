import 'package:flutter/material.dart';

import 'package:tasty_trove/widgets/custom_detail_header.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const routeName = 'recipe-detail';

  const RecipeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Custom header
          CustomDetailHeader(),
      
          // 
          Text('title'),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper eros dolor, et luctus augue eleifend at. Nullam consequat, magna elementum rutrum ornare, elit enim porttitor nisi ...')
          
          // ingredients
        ],
      ),
    );
  }
}

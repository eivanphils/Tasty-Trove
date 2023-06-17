import 'package:flutter/material.dart';
import 'package:tasty_trove/screens/recipe_detail_screen.dart';

import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/utils/random_number.dart';
import 'package:tasty_trove/widgets/widgets.dart';

class CardFood extends StatelessWidget {
  String tag;
  CardFood({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = AppTheme.colors[RandomNumber.getRandomNumber()];
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RecipeDetailScreen.routeName, arguments: {
        'tag': tag
      }),
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
        ),
        height: 179,
        width: 179,
        decoration: BoxDecoration(
            color: color.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: tag, child: const RecipeImage()),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'foodName',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Lorem ipsum dolor amet ...',
                style: TextStyle(fontSize: 9, color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ]),
      ),
    );
  }
}

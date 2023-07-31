import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/models/models.dart';
import 'package:tasty_trove/widgets/custom_detail_header.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const routeName = 'recipe-detail';

  const RecipeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final String? tag = arguments?['tag'];
    final Recipe? recipe = arguments?['recipe'];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDetailHeader(
              tag: tag!,
              recipe: recipe!,
            ),
      
            const SizedBox(
              height: 10,
            ),
      
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Food description',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.greyColor),
              ),
            ),
      
            const SizedBox(
              height: 12,
            ),
      
            _Metrics(
              fatQty: recipe.totalNutrients['FAT']!.quantity,
              sugarQty: recipe.totalNutrients['SUGAR']!.quantity,
              kcalQty: recipe.totalNutrients['ENERC_KCAL']!.quantity,
            ),
      
            const SizedBox(
              height: 15,
            ),
      
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper eros dolor, et luctus augue eleifend at. Nullam consequat, magna elementum rutrum ornare, elit enim porttitor nisi ...',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
      
            _Ingredients(
              ingredients: recipe.ingredients,
            ),
      
            // ingredients
          ],
        ),
      ),
    );
  }
}

class _Ingredients extends StatelessWidget {
  final List<Ingredient> ingredients;

  const _Ingredients({
    Key? key,
    required this.ingredients,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Container> ingredients = [];
    List.generate(ingredients.length, (int index) {
      // final ingredient = ingredients[index];
      ingredients.add(Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 66,
        decoration: ingredientsBoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://www.edamam.com/food-img/db9/db99a766fad87e02b4eac4840daaeaad.jpg',
                fit: BoxFit.cover,
                width: 45,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'dwd\n',
                style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.greyColor,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '2 teaspoons (6g) Japanese matcha green tea (see note above)',
                    style: TextStyle(
                        fontSize: 10,
                        color: AppTheme.greyColor,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
    });

    // ListView.builder(
    //       itemCount: ingredients.length,
    //       itemBuilder: (BuildContext context, int index) {
    //       final ingredient = ingredients[index];

    //       return Container(
    //         margin: const EdgeInsets.symmetric(vertical: 10),
    //         height: 66,
    //         decoration: ingredientsBoxDecoration(),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             ClipRRect(
    //               borderRadius: BorderRadius.circular(10),
    //               child: Image.network(
    //                 ingredient.image,
    //                 fit: BoxFit.cover,
    //                 width: 45,
    //               ),
    //             ),
    //             RichText(
    //               text: TextSpan(
    //                 text: '${ingredient.food}\n',
    //                 style: const TextStyle(
    //                     fontSize: 14,
    //                     color: AppTheme.greyColor,
    //                     fontWeight: FontWeight.bold),
    //                 children: <TextSpan>[
    //                   TextSpan(
    //                     text: ingredient.text,
    //                     style: const TextStyle(
    //                         fontSize: 10,
    //                         color: AppTheme.greyColor,
    //                         fontWeight: FontWeight.normal),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     })

    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Wrap(
        children: [
          Text(
            'Ingredients',
            style: TextStyle(
                color: AppTheme.greyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
        // ...ingredients
      ),
    );
  }

  BoxDecoration ingredientsBoxDecoration() {
    return BoxDecoration(
        color: AppTheme.grey3Color, borderRadius: BorderRadius.circular(15));
  }
}

class _Metrics extends StatelessWidget {
  final double fatQty;
  final double sugarQty;
  final double kcalQty;
  const _Metrics({
    Key? key,
    required this.fatQty,
    required this.sugarQty,
    required this.kcalQty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 103,
          height: 70,
          decoration: decorationCard(),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset(
              'assets/fat.png',
              width: 28,
              height: 28,
            ),
            RichText(
              text: TextSpan(
                text: 'Fat\n',
                style: metricTitleStyle(),
                children: <TextSpan>[
                  TextSpan(
                    text: fatQty.toStringAsFixed(2),
                    style: metricSubtitleStyle(),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Container(
          width: 103,
          height: 70,
          decoration: decorationCard(),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset(
              'assets/carbon.png',
              width: 28,
              height: 28,
            ),
            RichText(
              text: TextSpan(
                text: 'Sugar\n',
                style: metricTitleStyle(),
                children: <TextSpan>[
                  TextSpan(
                    text: sugarQty.toStringAsFixed(2),
                    style: metricSubtitleStyle(),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Container(
          width: 103,
          height: 70,
          decoration: decorationCard(),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset(
              'assets/kcal.png',
              width: 28,
              height: 28,
            ),
            RichText(
              text: TextSpan(
                text: 'Kcal\n',
                style: metricTitleStyle(),
                children: <TextSpan>[
                  TextSpan(
                    text: kcalQty.toStringAsFixed(2),
                    style: metricSubtitleStyle(),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }

  TextStyle metricSubtitleStyle() {
    return const TextStyle(
        fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF797979));
  }

  TextStyle metricTitleStyle() {
    return const TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold, color: AppTheme.greyColor);
  }

  BoxDecoration decorationCard() {
    return BoxDecoration(
        color: AppTheme.grey3Color, borderRadius: BorderRadius.circular(15));
  }
}

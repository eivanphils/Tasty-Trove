import 'package:flutter/material.dart';
import 'package:tasty_trove/theme/app_theme.dart';

import 'package:tasty_trove/widgets/custom_detail_header.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const routeName = 'recipe-detail';

  const RecipeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom header
            CustomDetailHeader(),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Classic Greek Salad Recipe',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.greyColor),
              ),
            ),

            SizedBox(
              height: 12,
            ),

            _Metrics(),

            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper eros dolor, et luctus augue eleifend at. Nullam consequat, magna elementum rutrum ornare, elit enim porttitor nisi ...',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            )

            // ingredients
          ],
        ),
      ),
    );
  }
}

class _Metrics extends StatelessWidget {
  const _Metrics({
    Key? key,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.abc),
              RichText(
                text: TextSpan(
                  text: 'Fat\n',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: ' 300g'),
                  ],
                ),
              ),
            ]),
        ),

         Container(
          width: 103,
          height: 70,
          decoration: decorationCard(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.abc),
              RichText(
                text: TextSpan(
                  text: 'Carbo\n',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: ' 200g'),
                  ],
                ),
              ),
            ]),
        ),

         Container(
          width: 103,
          height: 70,
          decoration: decorationCard(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.abc),
              RichText(
                text: TextSpan(
                  text: 'Kcal\n',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: ' 430g'),
                  ],
                ),
              ),
            ]),
        ),
      ],
    );
  }

  BoxDecoration decorationCard() {
    return BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15)
        );
  }
}

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

            SizedBox(
              height: 15,
            ),

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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset('assets/fat.png', width: 28, height: 28,),
            RichText(
              text: TextSpan(
                text: 'Fat\n',
                style: metricTitleStyle(),
                children: <TextSpan>[
                  TextSpan(text: ' 300g',
                style: metricSubtitleStyle(),),
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
            Image.asset('assets/carbon.png', width: 28, height: 28,),
            RichText(
              text: TextSpan(
                text: 'Carbo\n',
                style: metricTitleStyle(),
                children: <TextSpan>[
                  TextSpan(text: ' 200g',
                style: metricSubtitleStyle(),),
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
            Image.asset('assets/kcal.png', width: 28, height: 28,),
            RichText(
              text: TextSpan(
                text: 'Kcal\n',
                style: metricTitleStyle(),
                children: <TextSpan>[
                  TextSpan(
                    text: ' 430kc',
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
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(15));
  }
}

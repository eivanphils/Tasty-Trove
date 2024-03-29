import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/models/models.dart';
import 'package:tasty_trove/widgets/widgets.dart';

class CustomDetailHeader extends StatelessWidget {
  final String tag;
  final Recipe recipe;
  const CustomDetailHeader({Key? key, required this.tag, required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.43,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // green box with bottom radius
          Positioned(
            top: 0,
            child: Align(
              child: Container(
                width: size.width * 1,
                height: 335,
                decoration: _decoration(),
              ),
            ),
          ),

          const _BackButton(),
          const _Title(),
          const _FavoriteButton(),

          _RecipeImage(
            tag: tag,
            imageUrl: recipe.images.thumbnail.url!,
          ),

          _BoxCard(
            size: size,
            title: recipe.label,
            subtitle: '${recipe.cuisineType[0]} - ${recipe.mealType[0]} - ${recipe.dishType[0]}' ,
          )
        ],
      ),
    );
  }

  BoxDecoration decorationCard() => BoxDecoration(
      color: Colors.red,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      boxShadow: [AppTheme.boxShadow()]);

  BoxDecoration _decoration() => BoxDecoration(
      color: AppTheme.greenColor,
      boxShadow: [AppTheme.boxShadow()],
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)));
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 55,
      child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          )),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 70,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Tasty Trove',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 55,
      child: IconButton(
          onPressed: null,
          icon: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
                color: Colors.red[300],
                size: 25,
              ),
            ),
          )),
    );
  }
}

class _RecipeImage extends StatelessWidget {
  final String tag;
  final String imageUrl;
  const _RecipeImage({
    Key? key,
    required this.tag,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [AppTheme.boxShadow()]),
          child: Hero(
            tag: tag,
            child: RecipeImage(radius: 70, imageUrl: imageUrl),
          )),
    );
  }
}

class _BoxCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const _BoxCard({
    Key? key,
    required this.size,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 280,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color(0x26000000),
              offset: Offset(0, 5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.greyColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.grey2Color),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_rounded,
                    size: 18, color: AppTheme.yellow2Color),
                Icon(Icons.star_rounded,
                    size: 18, color: AppTheme.yellow2Color),
                Icon(Icons.star_rounded,
                    size: 18, color: AppTheme.yellow2Color),
                Icon(Icons.star_rounded,
                    size: 18, color: AppTheme.yellow2Color),
                Icon(Icons.star_border_rounded,
                    size: 18, color: AppTheme.yellow2Color),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                      color: AppTheme.yellow2Color,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

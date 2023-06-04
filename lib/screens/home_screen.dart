import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _Header(),

            _SearchBar(),

            _RecipeCategories()

            // TOdO: last  food
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'What do you want\nto cook today?',
            style: TextStyle(
                color: AppTheme.greyColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Image.asset(
            AppTheme.logo,
            height: 52,
          )
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search all recipe',
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class _RecipeCategories extends StatelessWidget {
  const _RecipeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular lunch recipes',
                style: TextStyle(
                    color: AppTheme.greyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(color: AppTheme.primaryColor),
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryTag(label: 'All', icon: Icons.all_out,),
              CategoryTag(label: 'Vegetable', icon: Icons.vertical_align_center_sharp,),
              CategoryTag(label: 'Pizza', icon: Icons.all_out,),
              CategoryTag(label: 'Italian', icon: Icons.all_out,),
              CategoryTag(label: 'Romana', icon: Icons.all_out,),
              CategoryTag(label: 'Spain', icon: Icons.all_out,),
            ],
          ),
        ),
        const Text('asd')
      ],
    );
  }
}

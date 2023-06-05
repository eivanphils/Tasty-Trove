import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Header(),
        
              const _SearchBar(),
        
              const _RecipeCategories(),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Daily food advice',
                  style: titleStyle(),
                ),
              ),
        
              SizedBox(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return const CardFood();
                    }),
              ),
            ],
          ),
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
          Text(
            'What do you want\nto cook today?',
            style: titleStyle(fontSize: 20),
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
              Text(
                'Popular lunch recipes',
                style: titleStyle(),
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
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryTag(
                label: 'All',
                isSelected: true,
              ),
              CategoryTag(
                label: 'Vegetable',
                icon: Icons.vertical_align_center_sharp,
                isSelected: false,
              ),
              CategoryTag(
                label: 'Pizza',
                icon: Icons.all_out,
                isSelected: false,
              ),
              CategoryTag(
                label: 'Italian',
                icon: Icons.all_out,
                isSelected: false,
              ),
              CategoryTag(
                label: 'Romana',
                icon: Icons.all_out,
                isSelected: false,
              ),
              CategoryTag(
                label: 'Spain',
                icon: Icons.all_out,
                isSelected: false,
              ),
            ],
          ),
        ),
        Container(
          height: 180,
          margin: const EdgeInsets.only(top: 10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return const CardFood();
              }),
        )
      ],
    );
  }
}

TextStyle titleStyle({double fontSize = 16}) {
  return TextStyle(
      color: AppTheme.greyColor,
      fontSize: fontSize,
      fontWeight: FontWeight.bold);
}

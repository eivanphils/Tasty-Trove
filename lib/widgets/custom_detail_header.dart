import 'package:flutter/material.dart';
import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/widgets/widgets.dart';

class CustomDetailHeader extends StatelessWidget {
  const CustomDetailHeader({
    Key? key,
  }) : super(key: key);

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
  
          const Positioned(
            left: 20,
            top: 55,
            child: Align(
              child: SizedBox(
                  width: 36,
                  height: 36,
                  child: IconButton(
                      onPressed: null, icon: Icon(Icons.arrow_back))),
            ),
          ),
          const Positioned(
            left: 140,
            top: 65,
            child: Align(
              child: SizedBox(
                width: 143,
                height: 19,
                child: Text(
                  'Classic Greek Salad',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
          const Positioned(
            right: 20,
            top: 55,
            child: Align(
              child: SizedBox(
                width: 36,
                height: 36,
                child:
                    IconButton(onPressed: null, icon: Icon(Icons.heart_broken)),
              ),
            ),
          ),

          Positioned(
            top: 110,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [AppTheme.boxShadow()]),
                child: const RecipeImage(
                  radius: 70,
                )),
          ),

          _BoxCard(size: size)
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

class _BoxCard extends StatelessWidget {
  const _BoxCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 280,
      child: Container(
        padding: const EdgeInsets.fromLTRB(61, 15, 61, 15),
        width: size.width * 0.9,
        height: 98,
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Classic Greek Salad - Recipe',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 9),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor amet, consectetur ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 9),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/utils/random_number.dart';

class CardFood extends StatelessWidget {
  const CardFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = AppTheme.colors[RandomNumber.getRandomNumber()];
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      height: 179,
      width: 179,
      decoration: BoxDecoration(
          color: color.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30)),
      child:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 50, // Define el tamaño del círculo
          backgroundImage: NetworkImage(
              AppTheme.imageDemo), // Especifica la URL de la imagen
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'foodName',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          'Lorem ipsum dolor amet ...',
          style: TextStyle(fontSize: 9, color: Colors.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ]),
    );
  }
}

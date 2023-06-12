import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';

class RecipeImage extends StatelessWidget {
  final double radius;
  const RecipeImage({
    Key? key, this.radius = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius, // Define el tamaño del círculo
      backgroundImage:
          const NetworkImage(AppTheme.imageDemo), // Especifica la URL de la imagen
    );
  }
}

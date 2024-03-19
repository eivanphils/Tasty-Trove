import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  final double radius;
  final String imageUrl;
  const RecipeImage({
    Key? key,
    this.radius = 50,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('images');
    print(imageUrl);
    return imageUrl.isNotEmpty
        ? Image.asset('assets/no-image.jpg')
        : CircleAvatar(
            radius: radius, // Define el tamaño del círculo
            backgroundImage:
                NetworkImage(imageUrl), // Especifica la URL de la imagen
          );
  }
}

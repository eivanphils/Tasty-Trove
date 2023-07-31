// To parse this JSON data, do
//
//     final hit = hitFromJson(jsonString);

import 'dart:convert';

import 'package:tasty_trove/models/models.dart';

Hit hitFromJson(String str) => Hit.fromJson(json.decode(str));

String hitToJson(Hit data) => json.encode(data.toJson());

class Hit {
    Recipe recipe;

    Hit({
        required this.recipe,
    });

    factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        recipe: Recipe.fromJson(json["recipe"]),
    );

    Map<String, dynamic> toJson() => {
        "recipe": recipe.toJson(),
    };
}


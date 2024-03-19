// To parse this JSON data, do
//
//     final recipe = recipeFromJson(jsonString);

import 'dart:convert';

Recipe recipeFromJson(String str) => Recipe.fromJson(json.decode(str));

String recipeToJson(Recipe data) => json.encode(data.toJson());

class Recipe {
    String uri;
    String label;
    String image;
    Images images;
    String source;
    String url;
    String shareAs;
    double recipeYield;
    List<String> dietLabels;
    List<String> healthLabels;
    List<String> cautions;
    List<String> ingredientLines;
    List<Ingredient> ingredients;
    double calories;
    double totalCo2Emissions;
    String co2EmissionsClass;
    double totalWeight;
    double totalTime;
    List<String> cuisineType;
    List<String> mealType;
    List<String> dishType;
    Map<String, Total> totalNutrients;
    Map<String, Total> totalDaily;
    List<Digest> digest;

    Recipe({
        required this.uri,
        required this.label,
        required this.image,
        required this.images,
        required this.source,
        required this.url,
        required this.shareAs,
        required this.recipeYield,
        required this.dietLabels,
        required this.healthLabels,
        required this.cautions,
        required this.ingredientLines,
        required this.ingredients,
        required this.calories,
        required this.totalCo2Emissions,
        required this.co2EmissionsClass,
        required this.totalWeight,
        required this.totalTime,
        required this.cuisineType,
        required this.mealType,
        required this.dishType,
        required this.totalNutrients,
        required this.totalDaily,
        required this.digest,
    });

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        uri: json["uri"],
        label: json["label"],
        image: json["image"],
        images: Images.fromJson(json["images"]),
        source: json["source"],
        url: json["url"],
        shareAs: json["shareAs"],
        recipeYield: json["yield"],
        dietLabels: List<String>.from(json["dietLabels"].map((x) => x)),
        healthLabels: List<String>.from(json["healthLabels"].map((x) => x)),
        cautions: List<String>.from(json["cautions"].map((x) => x)),
        ingredientLines: List<String>.from(json["ingredientLines"].map((x) => x)),
        ingredients: List<Ingredient>.from(json["ingredients"].map((x) => Ingredient.fromJson(x))),
        calories: json["calories"]?.toDouble(),
        totalCo2Emissions: json["totalCO2Emissions"]?.toDouble(),
        co2EmissionsClass: json["co2EmissionsClass"],
        totalWeight: json["totalWeight"]?.toDouble(),
        totalTime: json["totalTime"],
        cuisineType: List<String>.from(json["cuisineType"].map((x) => x)),
        mealType: List<String>.from(json["mealType"].map((x) => x)),
        dishType: List<String>.from(json["dishType"].map((x) => x)),
        totalNutrients: Map.from(json["totalNutrients"]).map((k, v) => MapEntry<String, Total>(k, Total.fromJson(v))),
        totalDaily: Map.from(json["totalDaily"]).map((k, v) => MapEntry<String, Total>(k, Total.fromJson(v))),
        digest: List<Digest>.from(json["digest"].map((x) => Digest.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "uri": uri,
        "label": label,
        "image": image,
        "images": images.toJson(),
        "source": source,
        "url": url,
        "shareAs": shareAs,
        "yield": recipeYield,
        "dietLabels": List<dynamic>.from(dietLabels.map((x) => x)),
        "healthLabels": List<dynamic>.from(healthLabels.map((x) => x)),
        "cautions": List<dynamic>.from(cautions.map((x) => x)),
        "ingredientLines": List<dynamic>.from(ingredientLines.map((x) => x)),
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "calories": calories,
        "totalCO2Emissions": totalCo2Emissions,
        "co2EmissionsClass": co2EmissionsClass,
        "totalWeight": totalWeight,
        "totalTime": totalTime,
        "cuisineType": List<dynamic>.from(cuisineType.map((x) => x)),
        "mealType": List<dynamic>.from(mealType.map((x) => x)),
        "dishType": List<dynamic>.from(dishType.map((x) => x)),
        "totalNutrients": Map.from(totalNutrients).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "totalDaily": Map.from(totalDaily).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "digest": List<dynamic>.from(digest.map((x) => x.toJson())),
    };
}

class Digest {
    String label;
    String tag;
    String? schemaOrgTag;
    double total;
    bool hasRdi;
    double daily;
    Unit? unit;
    List<Digest>? sub;

    Digest({
        required this.label,
        required this.tag,
        this.schemaOrgTag,
        required this.total,
        required this.hasRdi,
        required this.daily,
        required this.unit,
        this.sub,
    });

    factory Digest.fromJson(Map<String, dynamic> json) => Digest(
        label: json["label"],
        tag: json["tag"],
        schemaOrgTag: json["schemaOrgTag"],
        total: json["total"]?.toDouble(),
        hasRdi: json["hasRDI"],
        daily: json["daily"]?.toDouble(),
        unit: unitValues.map[json["unit"]],
        sub: json["sub"] == null ? [] : List<Digest>.from(json["sub"]!.map((x) => Digest.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "tag": tag,
        "schemaOrgTag": schemaOrgTag,
        "total": total,
        "hasRDI": hasRdi,
        "daily": daily,
        "unit": unitValues.reverse[unit],
        "sub": sub == null ? [] : List<dynamic>.from(sub!.map((x) => x.toJson())),
    };
}

enum Unit {
    EMPTY,
    G,
    KCAL,
    MG,
    UNIT_G
}

final unitValues = EnumValues({
    "%": Unit.EMPTY,
    "g": Unit.G,
    "kcal": Unit.KCAL,
    "mg": Unit.MG,
    "µg": Unit.UNIT_G
});

class Images {
    Large thumbnail;
    Large small;
    Large regular;
    Large large;

    Images({
        required this.thumbnail,
        required this.small,
        required this.regular,
        required this.large,
    });

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        thumbnail: Large.fromJson(json["THUMBNAIL"] ?? {}),
        small: Large.fromJson(json["SMALL"] ?? {}),
        regular: Large.fromJson(json["REGULAR"] ?? {}),
        large: Large.fromJson(json["LARGE"] ?? {}),
    );

    Map<String, dynamic> toJson() => {
        "THUMBNAIL": thumbnail.toJson(),
        "SMALL": small.toJson(),
        "REGULAR": regular.toJson(),
        "LARGE": large.toJson(),
    };
}

class Large {
    String? url;
    int? width = 300;
    int? height = 300;

    Large({
        this.url,
        this.width,
        this.height,
    });

    factory Large.fromJson(Map<String, dynamic> json) => Large(
        url: json["url"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
    };
}

class Ingredient {
    String text;
    double quantity;
    String? measure;
    String food;
    double weight;
    String foodCategory;
    String foodId;
    String image;

    Ingredient({
        required this.text,
        required this.quantity,
        this.measure,
        required this.food,
        required this.weight,
        required this.foodCategory,
        required this.foodId,
        required this.image,
    });

    factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        text: json["text"],
        quantity: json["quantity"],
        measure: json["measure"],
        food: json["food"],
        weight: json["weight"]?.toDouble(),
        foodCategory: json["foodCategory"],
        foodId: json["foodId"],
        image: json["image"] = 'null',
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "quantity": quantity,
        "measure": measure,
        "food": food,
        "weight": weight,
        "foodCategory": foodCategory,
        "foodId": foodId,
        "image": image,
    };
}

class Total {
    String label;
    double quantity;
    Unit? unit;

    Total({
        required this.label,
        required this.quantity,
        required this.unit,
    });

    factory Total.fromJson(Map<String, dynamic> json) => Total(
        label: json["label"],
        quantity: json["quantity"]?.toDouble(),
        unit: unitValues.map[json["unit"]],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "quantity": quantity,
        "unit": unitValues.reverse[unit],
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

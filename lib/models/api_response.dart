// To parse this JSON data, do
//
//     final apiResponse = apiResponseFromJson(jsonString);

import 'dart:convert';

import 'package:tasty_trove/models/models.dart';

ApiResponse apiResponseFromJson(String str) => ApiResponse.fromJson(json.decode(str));

String apiResponseToJson(ApiResponse data) => json.encode(data.toJson());

class ApiResponse {
    int from;
    int to;
    int count;
    Links links;
    List<Hit> hits;

    ApiResponse({
        required this.from,
        required this.to,
        required this.count,
        required this.links,
        required this.hits,
    });

    factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        from: json["from"],
        to: json["to"],
        count: json["count"],
        links: Links.fromJson(json["_links"]),
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "from": from,
        "to": to,
        "count": count,
        "_links": links.toJson(),
        "hits": List<Hit>.from(hits.map((x) => x)),
    };
}


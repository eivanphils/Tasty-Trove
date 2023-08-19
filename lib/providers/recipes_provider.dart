import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:tasty_trove/models/models.dart';

class RecipeProvider extends ChangeNotifier {
  final String _baseUrl = 'api.edamam.com';
  final String _apiKey = 'faccb97f3e87c32a2b95432a8c982692';
  final String _apiId = 'f3893902';

  List<Hit> onHitRecipes = [];
  bool _isLoading = false;

  RecipeProvider() {
    getAllRecipes();
  }

  void getAllRecipes({String? query}) async {
    _isLoading = true;
    final jsonData = await _getJsonData(endpoint: 'api/recipes/v2');
    final apiResponse = apiResponseFromJson(jsonData);

    onHitRecipes = apiResponse.hits;

    _isLoading = false;
    notifyListeners();
  }

  Future<String> _getJsonData({String? query, required String endpoint}) async {
    final url = Uri.https(_baseUrl, endpoint, {
      'app_key': _apiKey,
      'app_id': _apiId,
      'type': 'public',
      'diet': 'high-protein',
      'q': query
    });

    final response = await http.get(url);

    return response.body;
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:redim/constants.dart';
import 'package:redim/models/categoriesModel.dart';
import 'package:redim/providers/categoriesProvider.dart';

getCetegoriesList(context) async {
  var categoriesDataProvider =
      Provider.of<CategoriesProvider>(context, listen: false);
  var headers = {
    'x-api-key': Constants.apiKey,
    'Authorization': 'Bearer ${Constants.token}'
  };
  var response = await http.get(
      Uri.parse('${Constants.baseUrl}gettopcategories/en'),
      headers: headers);
  if (response.statusCode == 200) {
    categoriesDataProvider
        .setCategoriesData(CategoriesModel.fromJson(jsonDecode(response.body)));
  } else {
    print(response.reasonPhrase);
  }
}

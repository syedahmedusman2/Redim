import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:redim/constants.dart';
import 'package:redim/models/topBrandsModel.dart';
import 'package:redim/providers/topBrandsProvider.dart';

getTopBrands(context) async {
  var topBrandsProvider =
      Provider.of<TopBrandsProvider>(context, listen: false);
  var headers = {
    'x-api-key': Constants.apiKey,
    'Authorization': 'Bearer ${Constants.token}'
  };
  var response = await http.post(Uri.parse('${Constants.baseUrl}storelist/en'),
      headers: headers);
  if (response.statusCode == 200) {
    topBrandsProvider
        .setTopBrands(TopBrandsModel.fromJson(jsonDecode(response.body)));
  } else {
    print(response.reasonPhrase);
  }
}

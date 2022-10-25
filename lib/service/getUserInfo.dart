import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:redim/constants.dart';
import 'package:redim/models/topBrandsModel.dart';
import 'package:redim/models/userInfoModels.dart';
import 'package:redim/providers/topBrandsProvider.dart';
import 'package:redim/providers/userInfoProvider.dart';

getUserInfo(context) async {
  var userInfoProvider = Provider.of<UserInfoProvider>(context, listen: false);
  var headers = {
    'x-api-key': Constants.apiKey,
    'Authorization': 'Bearer ${Constants.token}'
  };
  var response = await http.get(Uri.parse('${Constants.baseUrl}userinfo/7'),
      headers: headers);
  if (response.statusCode == 200) {
    userInfoProvider
        .setUserInfo(GetUserInfoModel.fromJson(jsonDecode(response.body)));
  } else {
    print(response.reasonPhrase);
  }
}

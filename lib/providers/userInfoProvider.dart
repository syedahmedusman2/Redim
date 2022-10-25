import 'package:flutter/cupertino.dart';
import 'package:redim/models/userInfoModels.dart';

class UserInfoProvider extends ChangeNotifier {
  GetUserInfoModel? _userInfoData;
  GetUserInfoModel? get data => _userInfoData;

  setUserInfo(GetUserInfoModel? getData) {
    _userInfoData = getData;
    notifyListeners();
  }
}

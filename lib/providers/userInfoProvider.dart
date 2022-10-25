import 'package:flutter/cupertino.dart';

class UserInfoProvider extends ChangeNotifier {
  UserInfoProvider? _userInfoData;
  UserInfoProvider? get data => _userInfoData;

  setAppDataProvider(UserInfoProvider? getData) {
    _userInfoData = getData;
    notifyListeners();
  }
}

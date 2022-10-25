import 'package:flutter/cupertino.dart';

class TopBrandsProvider extends ChangeNotifier {
  TopBrandsProvider? _topBrandsData;
  TopBrandsProvider? get data => _topBrandsData;

  setAppDataProvider(TopBrandsProvider? getData) {
    _topBrandsData = getData;
    notifyListeners();
  }
}

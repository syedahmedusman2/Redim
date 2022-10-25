import 'package:flutter/cupertino.dart';
import 'package:redim/models/topBrandsModel.dart';

class TopBrandsProvider extends ChangeNotifier {
  TopBrandsModel? _topBrandsData;
  TopBrandsModel? get data => _topBrandsData;

  setTopBrands(TopBrandsModel? getData) {
    _topBrandsData = getData;
    notifyListeners();
  }
}

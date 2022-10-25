import 'package:flutter/cupertino.dart';
import 'package:redim/models/categoriesModel.dart';

class CategoriesProvider extends ChangeNotifier {
  CategoriesModel? _categoriesData;
  CategoriesModel? get data => _categoriesData;

  setCategoriesData(CategoriesModel? getData) {
    print("Function main aagaya ho");
    _categoriesData = getData;
    notifyListeners();
  }
}

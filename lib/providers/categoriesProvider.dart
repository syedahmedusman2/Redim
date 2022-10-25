import 'package:flutter/cupertino.dart';

class CategoriesProvider extends ChangeNotifier {
  CategoriesProvider? _categoriesData;
  CategoriesProvider? get data => _categoriesData;

  setAppDataProvider(CategoriesProvider? getData) {
    print("Function main aagaya ho");
    _categoriesData = getData;
    notifyListeners();
  }
}

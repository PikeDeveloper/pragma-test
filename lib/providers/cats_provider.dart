import 'package:flutter/material.dart';
import '../models/cats.dart';
import '../repositories/cats_repository.dart';

class CatsProvider with ChangeNotifier {
  CatsProvider.instance() {
    getAll();
  }

  List<CatsModel> _cats = [];
  List<CatsModel> _filteredCats = [];
  bool _loading = false;
  String _query = "";
  CatsModel _currentCat = CatsModel.empty();

  List<CatsModel> get cats => _cats;
  List<CatsModel> get filteredCats => _filteredCats;
  bool get loading => _loading;
  String get query => _query;
  CatsModel get currentCat => _currentCat;

  set cats(List<CatsModel> cats) {
    _cats = cats;
    notifyListeners();
  }

  set filteredCats(List<CatsModel> filteredCats) {
    _filteredCats = filteredCats;
    notifyListeners();
  }

  void filterCats() {
    filteredCats = cats
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    notifyListeners();
  }

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  set query(String query) {
    _query = query;
    notifyListeners();
  }

  set currentCat(CatsModel currentCat) {
    _currentCat = currentCat;
    notifyListeners();
  }

  void getAll() async {
    print("getAll");
    loading = true;
    cats = await CatsRepository.getAll();
    filteredCats = cats;
    loading = false;
  }
}

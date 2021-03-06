import 'package:flutter/material.dart';

import '../entities/category.dart';

class SubCategoryProvide with ChangeNotifier {
  // 商品列表
  List<BxMallSubDtoListBean> _bxMallSubs = [];

  // 大类 id
  var _categoryId = '';

  // 小类 id
  var _subCategoryId = '';

  // 当前选择的小类 item index
  var _subIndex = 0;

  List<BxMallSubDtoListBean> get subCategories => _bxMallSubs;

  String get categoryId => _categoryId;

  String get subCategoryId => _subCategoryId;

  int get subIndex => _subIndex;

  void changeBxCategories(List<BxMallSubDtoListBean> categories) {
    BxMallSubDtoListBean allSubDto = BxMallSubDtoListBean()
      ..mallCategoryId = ''
      ..mallSubId = null
      ..comments = ''
      ..mallSubName = '全部';

    _bxMallSubs.clear();
    _bxMallSubs.add(allSubDto);
    _bxMallSubs.addAll(categories);
    _subCategoryId = '';
    _subIndex = 0;

    notifyListeners();
  }

  void changeCategory(String categoryId) {
    _categoryId = categoryId;
    notifyListeners();
  }

  void changeSubCategorySelect(String subCategoryId) {
    _subCategoryId = subCategoryId;
    notifyListeners();
  }

  void changeSubCategoryIndex(int index) {
    _subIndex = index;
    notifyListeners();
  }
}

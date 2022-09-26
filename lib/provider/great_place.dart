import 'dart:io';

import 'package:flutter/cupertino.dart';
import '../models/models.dart';
import '../helper/db_helper.dart';

class Great_Place with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }

  addPlace(String title, File image) {
    final newplace = Place(
        id: DateTime.now().toString(),
        image: image,
        title: title,
        location: null);
    _items.add(newplace);
    notifyListeners();
    DBHelper.insert('user', {'id': newplace.id, 'title': newplace.title});
  }

  Future<void> fetchaset() async {
    final dataList = await DBHelper.getData('user');
    _items = dataList
        .map((item) => Place(
              id: item['id'],
              title: item['title'],
              location: null,
            ))
        .toList();
    notifyListeners();
  }
}

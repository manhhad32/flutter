import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';


class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var favorites = <WordPair>[];
  var selectedIndex = 0;
  var selectedIndexInAnotherWidget = 0;

  void getNext(){
    current = WordPair.random();
    notifyListeners();
  }
  
  void toggleFavorite() {
    if(favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}
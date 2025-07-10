import 'package:flutter/material.dart';
import 'package:task_1/models/quotes.dart';
import 'package:task_1/utils/dummy_quotes.dart';

class QuoteProviders with ChangeNotifier {
  List<Quotes> _quotes = dummyQuotes;
  List<Quotes> get quotes => _quotes;

  List<Quotes> get favoriteQuotes =>
      _quotes.where((quote) => quote.isFavorite).toList(); 

      void toggleFavorite(Quotes quote){
        quote.isFavorite = !quote.isFavorite;
        notifyListeners();
      }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/Widgets/quotes_cards.dart';
import 'package:task_1/providers/quote_providers.dart';

class FavortiteScreen extends StatefulWidget {
  const FavortiteScreen({super.key});

  @override
  State<FavortiteScreen> createState() => _FavortiteScreenState();
}

class _FavortiteScreenState extends State<FavortiteScreen> {
  @override
  Widget build(BuildContext context) {
     final favQuotes = Provider.of<QuoteProviders>(context).favoriteQuotes;
     return favQuotes.isEmpty ? Center(child: Text("No Favorite Quotes Yet!"),) : ListView.builder(
      itemCount: favQuotes.length,
      itemBuilder: (context, index){
      return QuotesCards(quote: favQuotes[index]);
     });
  }
}
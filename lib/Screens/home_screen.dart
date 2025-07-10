import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/Widgets/quotes_cards.dart';
import 'package:task_1/providers/quote_providers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuoteProviders>(context).quotes;
    return ListView.builder(
      itemCount: provider.length,
      itemBuilder: (context, index) {
      return QuotesCards(quote: provider[index]);
    });
  }
}

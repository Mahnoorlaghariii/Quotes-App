import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/models/quotes.dart';
import 'package:task_1/providers/quote_providers.dart';
import 'package:task_1/utils/dummy_quotes.dart';

class QuotesCards extends StatelessWidget {
   
  final Quotes quote;

  const QuotesCards({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
     final quoteProv = Provider.of<QuoteProviders>(context, listen: false);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      child: Column(
        children: [
          Image.network(
            quote.AuthImageURl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          Padding(padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
                Text("${quote.quoteText}" , style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),),
                SizedBox(height: 10,),
                Text(" - ${quote.AuthName}", style: const TextStyle(fontWeight: FontWeight.bold),),
                 Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      quote.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                     quoteProv.toggleFavorite(quote);
                    },
                  ), )
            ],
          ), )
        ],
      ),
    );
  }
}

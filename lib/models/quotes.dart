class Quotes {
  final String quoteText;
  final String AuthName;
  final String AuthImageURl;
  bool isFavorite;

  Quotes({
    required this.quoteText,
    required this.AuthName,
    required this.AuthImageURl,
    this.isFavorite = false,
  });



}

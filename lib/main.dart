import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/Screens/splash_screen.dart';
import 'package:task_1/providers/quote_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> QuoteProviders())
    ],
    child: MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  SplashScreen(),
    ),
    );
}

}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_1/Screens/bottom_nav.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav()));
    });
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quotes",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 27, 117, 191),
                ),
              ),
              Image.asset('assets/logoi.png', height: 250),
              SizedBox(height: 20),
              Text(
                "Hang On.....",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              Text(
                "Discover daily quotes and save your favorites",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),
              Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: CircularProgressIndicator(
                  color: const Color.fromARGB(255, 27, 117, 191),
                  strokeWidth: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

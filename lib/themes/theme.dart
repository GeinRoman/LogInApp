import 'package:flutter/material.dart';

final mainTheme = ThemeData(
    
    appBarTheme: AppBarTheme(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[200]
    ),

    scaffoldBackgroundColor: Colors.lightGreenAccent[100],
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),

    textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    ),
);

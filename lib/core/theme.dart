import 'package:flutter/material.dart';

class ThemeBuilder {
  static ThemeData build() => ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple.shade300,
        ),
      ).copyWith(cardTheme: _cardTheme);

  static final _cardTheme = CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
  );
}

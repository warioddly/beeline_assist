import 'package:flutter/material.dart';

class AppThemeData {
  final BorderRadius borderRadius = BorderRadius.circular(8);

  static const Color secondary = Color.fromRGBO(36, 33, 101, 1);
  static const Color secondary60 = Color.fromRGBO(36, 33, 101, 0.6);
  static const Color primary = Color.fromRGBO(63, 159, 152, 1);
  static const Color grey = Color.fromRGBO(165, 174, 189, 1);
  static const Color disable = Color.fromRGBO(209, 232, 230, 1);
  static const Color errorColor = Color.fromRGBO(255, 75, 85, 1);
  static const Color infoColor = Color.fromRGBO(47, 128, 237, 1);
  static const Color success = Color.fromRGBO(39, 174, 96, 1);
  static const Color warning = Color.fromRGBO(226, 185, 59, 1);
  static const Color screenColor = Color.fromRGBO(236, 245, 245, 1);
  static const Color cardColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color blue4 = Color.fromRGBO(103, 104, 155, 1);
  static const Color hintColor = Color.fromRGBO(134, 195, 190, 1);

  static const text_14 = TextStyle(fontSize: 14);
  static const text_16 = TextStyle(fontSize: 16);
  static const text_18 = TextStyle(fontSize: 18);
  static const text_24 = TextStyle(fontSize: 24);
  static const text_32 = TextStyle(fontSize: 32);
  static const text_40 = TextStyle(fontSize: 40);
  static const text_48 = TextStyle(fontSize: 48);

  /// Для получения кастомного цвета или стиля
  // Theme.of(context).textButtonTheme.style?.copyWith(backgroundColor: MaterialStateProperty.all(AppThemeData.primary));

  static const EdgeInsets padding =
  EdgeInsets.symmetric(horizontal: 40, vertical: 12);

  final border = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  );

  ThemeData get materialTheme {
    return ThemeData(
      hintColor: hintColor,
      dialogTheme: const DialogTheme(
          contentTextStyle: TextStyle(color: secondary, fontSize: 16)
      ),
      appBarTheme:const AppBarTheme(color: screenColor,titleTextStyle: TextStyle(color: secondary)),
      iconTheme: const IconThemeData(color: Colors.red),
      scaffoldBackgroundColor: screenColor,
      errorColor: errorColor,
      fontFamily: 'Inter',
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: border,
          padding: padding,
          foregroundColor: Colors.white,
          backgroundColor: secondary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: primary),
          shape: border,
          padding: padding,
          foregroundColor: secondary,
        ),
      ),
      // textTheme: const TextTheme(
      //   bodySmall: TextStyle(fontSize: 14.0),
      //   bodyMedium: TextStyle(
      //       fontSize: 16.0,
      //       fontWeight: FontWeight.bold,
      //       color: AppThemeData.secondary),
      //   bodyLarge: TextStyle(fontSize: 18.0),
      // ),
    );
  }
}

import 'package:flutter/material.dart';

import 'constants/appText.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App Ui',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          textTheme: TextTheme(
            bodyLarge: AppTypography().body,
            bodyMedium: AppTypography().body,
            titleMedium: AppTypography().sectionTitle,
            titleSmall: AppTypography().sectionTitle,
            displayLarge: AppTypography().largeTitle,
            displayMedium: AppTypography().body,
            displaySmall: AppTypography().body,
            headlineMedium: AppTypography().header,
            headlineSmall: AppTypography().header,
            titleLarge: AppTypography().largeTitle,
            labelLarge: AppTypography().largeTitle,
            bodySmall: AppTypography().body,
            labelSmall: AppTypography().button,
          )),
      home: Container(),
    );
  }
}

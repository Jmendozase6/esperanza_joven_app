import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:young_pregnant_app/config/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.mainColor,
      // background: AppColors.backgroundColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.appBarColor,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: GoogleFonts.poppinsTextTheme(),
    primaryTextTheme: GoogleFonts.poppinsTextTheme(),
  );
}

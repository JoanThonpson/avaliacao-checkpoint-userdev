import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTheme {
  // ==================== TEMA ESCURO ====================
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.accentPink,
      surface: AppColors.backgroundDark,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ).copyWith(
      // Escala tipográfica do Figma — Orbitron
      displayLarge: GoogleFonts.orbitron(
        fontSize: 76, fontWeight: FontWeight.bold, color: AppColors.textLight,
      ),
      displayMedium: GoogleFonts.orbitron(
        fontSize: 61, fontWeight: FontWeight.bold, color: AppColors.textLight,
      ),
      displaySmall: GoogleFonts.orbitron(
        fontSize: 48, fontWeight: FontWeight.bold, color: AppColors.textLight,
      ),
      headlineLarge: GoogleFonts.orbitron(
        fontSize: 39, fontWeight: FontWeight.bold, color: AppColors.textLight,
      ),
      headlineMedium: GoogleFonts.orbitron(
        fontSize: 31, fontWeight: FontWeight.w600, color: AppColors.textLight,
      ),
      headlineSmall: GoogleFonts.orbitron(
        fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.textLight,
      ),
      titleLarge: GoogleFonts.orbitron(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textLight,
      ),
      // Escala tipográfica do Figma — Poppins
      bodyLarge: GoogleFonts.poppins(
        fontSize: 20, color: AppColors.textLight,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 16, color: AppColors.textLight,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 12, color: AppColors.textMuted,
      ),
      labelLarge: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textLight,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.textLight),
      titleTextStyle: GoogleFonts.orbitron(
        color: AppColors.textLight,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    ),
  );

  // ==================== TEMA CLARO ====================
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accentPink,
      surface: AppColors.backgroundLight,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.light().textTheme,
    ).copyWith(
      displayLarge: GoogleFonts.orbitron(
        fontSize: 76, fontWeight: FontWeight.bold, color: AppColors.textPrimary,
      ),
      displayMedium: GoogleFonts.orbitron(
        fontSize: 61, fontWeight: FontWeight.bold, color: AppColors.textPrimary,
      ),
      displaySmall: GoogleFonts.orbitron(
        fontSize: 48, fontWeight: FontWeight.bold, color: AppColors.textPrimary,
      ),
      headlineLarge: GoogleFonts.orbitron(
        fontSize: 39, fontWeight: FontWeight.bold, color: AppColors.textPrimary,
      ),
      headlineMedium: GoogleFonts.orbitron(
        fontSize: 31, fontWeight: FontWeight.w600, color: AppColors.textPrimary,
      ),
      headlineSmall: GoogleFonts.orbitron(
        fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.textPrimary,
      ),
      titleLarge: GoogleFonts.orbitron(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textPrimary,
      ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 20, color: AppColors.textPrimary,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 16, color: AppColors.textPrimary,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 12, color: AppColors.textSecondary,
      ),
      labelLarge: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textPrimary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    ),
  );
}
import 'package:flutter/material.dart';

/// BizStocker - Professional Business Management App Color Scheme
/// Following Material Design 3 guidelines for business applications
class AppColors {
  // ============================================
  // PRIMARY COLORS (Brand Identity)
  // ============================================
  static const Color primary = Color(
    0xFF2563EB,
  ); // Blue 600 - Professional, trustworthy
  static const Color primaryContainer = Color(
    0xFFDBEAFE,
  ); // Blue 100 - Light variant
  static const Color onPrimary = Colors.white; // White - Text on primary
  static const Color onPrimaryContainer = Color(
    0xFF1E40AF,
  ); // Blue 800 - Text on primary container

  // ============================================
  // SECONDARY COLORS (Accent & Contrast)
  // ============================================
  static const Color secondary = Color(
    0xFF10B981,
  ); // Emerald 500 - Growth, positivity
  static const Color secondaryContainer = Color(
    0xFFD1FAE5,
  ); // Emerald 100 - Light variant
  static const Color onSecondary = Colors.white; // White - Text on secondary
  static const Color onSecondaryContainer = Color(
    0xFF065F46,
  ); // Emerald 800 - Text on secondary container

  // ============================================
  // LIGHT THEME SPECIFIC COLORS
  // ============================================
  static const Color lightSurface =
      Colors.white; // Pure white - Main background
  static const Color lightSurfaceContainer = Color(
    0xFFF9FAFB,
  ); // Gray 50 - Light background
  static const Color lightSurfaceContainerLow = Color(
    0xFFF3F4F6,
  ); // Gray 100 - Cards & containers
  static const Color lightSurfaceContainerHigh = Color(
    0xFFE5E7EB,
  ); // Gray 200 - Elevated surfaces
  static const Color lightSurfaceVariant = Color(
    0xFFE5E7EB,
  ); // Gray 200 - Variant surfaces
  static const Color lightOnSurface = Color(0xFF111827); // Gray 900 - Main text
  static const Color lightOnSurfaceVariant = Color(
    0xFF6B7280,
  ); // Gray 500 - Secondary text
  static const Color lightBackground = Colors.white; // Main background
  static const Color lightBorder = Color(
    0xFFE5E7EB,
  ); // Gray 200 - Light borders

  // ============================================
  // DARK THEME SPECIFIC COLORS
  // ============================================
  static const Color darkSurface = Color(
    0xFF1F2937,
  ); // Gray 800 - Main background
  static const Color darkSurfaceContainer = Color(
    0xFF111827,
  ); // Gray 900 - Dark background
  static const Color darkSurfaceContainerLow = Color(
    0xFF374151,
  ); // Gray 700 - Cards & containers
  static const Color darkSurfaceContainerHigh = Color(
    0xFF4B5563,
  ); // Gray 600 - Elevated surfaces
  static const Color darkSurfaceVariant = Color(
    0xFF374151,
  ); // Gray 700 - Variant surfaces
  static const Color darkOnSurface = Color(0xFFF3F4F6); // Gray 100 - Main text
  static const Color darkOnSurfaceVariant = Color(
    0xFFD1D5DB,
  ); // Gray 300 - Secondary text
  static const Color darkBackground = Color(0xFF111827); // Main background
  static const Color darkBorder = Color(0xFF4B5563); // Gray 600 - Dark borders

  // ============================================
  // SUPPORTING COLORS (Status & Feedback) - Same for both themes
  // ============================================
  // Success (Green)
  static const Color success = Color(0xFF10B981); // Emerald 500
  static const Color successContainer = Color(0xFFD1FAE5); // Emerald 100
  static const Color onSuccess = Colors.white;

  // Error (Red)
  static const Color error = Color(0xFFEF4444); // Red 500
  static const Color errorContainer = Color(0xFFFEE2E2); // Red 100
  static const Color onError = Colors.white;

  // Warning (Orange)
  static const Color warning = Color(0xFFF59E0B); // Amber 500
  static const Color warningContainer = Color(0xFFFFEDD5); // Amber 100
  static const Color onWarning = Colors.white;

  // Info (Blue)
  static const Color info = Color(0xFF3B82F6); // Blue 500
  static const Color infoContainer = Color(0xFFDBEAFE); // Blue 100
  static const Color onInfo = Colors.white;

  // ============================================
  // ACCENT COLORS (Highlights & Emphasis)
  // ============================================
  static const Color accent = Color(0xFF8B5CF6); // Purple 500 - Highlights
  static const Color accentContainer = Color(0xFFF3E8FF); // Purple 100
  static const Color onAccent = Colors.white;

  static const Color accentSecondary = Color(
    0xFFEC4899,
  ); // Pink 500 - Alternative accent
  static const Color accentSecondaryContainer = Color(0xFFFFE8F0); // Pink 100

  // ============================================
  // SHADOW & OVERLAY COLORS
  // ============================================
  static const Color shadow = Color(0x1A000000); // 10% Black - Light shadow
  static const Color shadowDark = Color(0x33000000); // 20% Black - Dark shadow
  static const Color overlay = Color(0x80000000); // 50% Black - Modal overlay

  // ============================================
  // GRADIENT COLORS
  // ============================================
  static const List<Color> primaryGradient = [
    Color(0xFF2563EB),
    Color(0xFF1D4ED8),
  ];

  static const List<Color> secondaryGradient = [
    Color(0xFF10B981),
    Color(0xFF059669),
  ];

  static const List<Color> accentGradient = [
    Color(0xFF8B5CF6),
    Color(0xFF7C3AED),
  ];
}

/// Application Theme Configuration
class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        onPrimary: AppColors.onPrimary,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondary: AppColors.secondary,
        secondaryContainer: AppColors.secondaryContainer,
        onSecondary: AppColors.onSecondary,
        onSecondaryContainer: AppColors.onSecondaryContainer,
        surface: AppColors.lightSurface,
        surfaceContainer: AppColors.lightSurfaceContainer,
        surfaceContainerHighest: AppColors.lightSurfaceContainerHigh,
        onSurface: AppColors.lightOnSurface,
        onSurfaceVariant: AppColors.lightOnSurfaceVariant,
        error: AppColors.error,
        errorContainer: AppColors.errorContainer,
        onError: AppColors.onError,
        background: AppColors.lightBackground,
        onBackground: AppColors.lightOnSurface,
      ),
      scaffoldBackgroundColor: AppColors.lightBackground,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        onPrimary: AppColors.onPrimary,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondary: AppColors.secondary,
        secondaryContainer: AppColors.secondaryContainer,
        onSecondary: AppColors.onSecondary,
        onSecondaryContainer: AppColors.onSecondaryContainer,
        surface: AppColors.darkSurface,
        surfaceContainer: AppColors.darkSurfaceContainer,
        surfaceContainerHighest: AppColors.darkSurfaceContainerHigh,
        onSurface: AppColors.darkOnSurface,
        onSurfaceVariant: AppColors.darkOnSurfaceVariant,
        error: AppColors.error,
        errorContainer: AppColors.errorContainer,
        onError: AppColors.onError,
        background: AppColors.darkBackground,
        onBackground: AppColors.darkOnSurface,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
    );
  }
}

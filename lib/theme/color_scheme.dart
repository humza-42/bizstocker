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
  // SURFACE COLORS (Backgrounds & Cards)
  // ============================================
  static const Color surface = Colors.white; // Pure white - Main background
  static const Color surfaceContainer = Color(
    0xFFF9FAFB,
  ); // Gray 50 - Light background
  static const Color surfaceContainerLow = Color(
    0xFFF3F4F6,
  ); // Gray 100 - Cards & containers
  static const Color surfaceContainerHigh = Color(
    0xFFE5E7EB,
  ); // Gray 200 - Elevated surfaces
  static const Color surfaceVariant = Color(
    0xFFE5E7EB,
  ); // Gray 200 - Variant surfaces
  static const Color onSurface = Color(0xFF111827); // Gray 900 - Main text
  static const Color onSurfaceVariant = Color(
    0xFF6B7280,
  ); // Gray 500 - Secondary text

  // ============================================
  // SUPPORTING COLORS (Status & Feedback)
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
  // NEUTRAL BACKGROUNDS (Grayscale)
  // ============================================
  static const Color background = Colors.white; // Main background
  static const Color backgroundElevated = Color(0xFFF9FAFB); // Light elevation
  static const Color backgroundSecondary = Color(
    0xFFF3F4F6,
  ); // Secondary sections
  static const Color backgroundTertiary = Color(
    0xFFE5E7EB,
  ); // Tertiary elements

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
  // BORDER & DIVIDER COLORS
  // ============================================
  static const Color border = Color(0xFFE5E7EB); // Gray 200 - Light borders
  static const Color borderDark = Color(0xFFD1D5DB); // Gray 300 - Dark borders
  static const Color divider = Color(0xFFE5E7EB); // Same as border

  // ============================================
  // TEXT COLORS (Typography)
  // ============================================
  static const Color textPrimary = Color(0xFF111827); // Gray 900 - Main text
  static const Color textSecondary = Color(
    0xFF6B7280,
  ); // Gray 500 - Secondary text
  static const Color textTertiary = Color(
    0xFF9CA3AF,
  ); // Gray 400 - Tertiary text
  static const Color textDisabled = Color(
    0xFFD1D5DB,
  ); // Gray 300 - Disabled text

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
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        onPrimary: AppColors.onPrimary,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondary: AppColors.secondary,
        secondaryContainer: AppColors.secondaryContainer,
        onSecondary: AppColors.onSecondary,
        onSecondaryContainer: AppColors.onSecondaryContainer,
        surface: AppColors.surface,
        surfaceContainer: AppColors.surfaceContainer,
        surfaceContainerHighest: AppColors.surfaceContainerHigh,
        onSurface: AppColors.onSurface,
        onSurfaceVariant: AppColors.onSurfaceVariant,
        error: AppColors.error,
        errorContainer: AppColors.errorContainer,
        onError: AppColors.onError,
        background: AppColors.background,
        onBackground: AppColors.onSurface,
      ),
      scaffoldBackgroundColor: AppColors.background,
    );
  }

  static ThemeData dark() {
    // Dark theme can be implemented similarly if needed
    return light();
  }
}

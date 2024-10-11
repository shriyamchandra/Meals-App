import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/screens/tabs.dart';

// Define modern iOS-like colors with a lighter dark theme
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark, // Use dark theme
    seedColor: Colors.teal, // Adjust seed color for a modern look
    primary: Colors.teal, // Primary color
    onPrimary: Colors.white, // Text color on primary
    secondary: Colors.blueGrey, // Secondary color
    onSecondary: Colors.white, // Text color on secondary
    background: Colors.grey[900]!, // Background color
    onBackground: Colors.white, // Text color on background
    surface: Colors.grey[850]!, // Surface color
    onSurface: Colors.white, // Text color on surface
  ),
  textTheme: GoogleFonts.latoTextTheme(
    const TextTheme(
      bodyLarge: TextStyle(color: Colors.white70), // Updated text colors for dark mode
      bodyMedium: TextStyle(color: Colors.white54),
      headlineLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
  ),
);

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const TabsScreen(),
    );
  }
}

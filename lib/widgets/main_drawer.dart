import 'dart:ui'; // For ImageFilter

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          // Background image with blur effect
          Positioned.fill(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/pexels-valeriya-842571.jpg', // Ensure this is an offline image
                  fit: BoxFit.cover,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.3), // Semi-transparent overlay
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              // Header with semi-transparent gradient
              DrawerHeader(
                padding: EdgeInsets.zero, // Remove internal padding
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.5), // Semi-transparent gradient
                      Colors.black.withOpacity(0.7),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.fastfood,
                      size: 48,
                      color: Colors.white, // Set the icon color to white
                    ),
                    const SizedBox(width: 18),
                    Text(
                      'Cooking Up!',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white, // Set the text color to white
                      ),
                    ),
                  ],
                ),
              ),
              // Drawer items
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero, // Remove internal padding
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.restaurant,
                        size: 26,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      title: Text(
                        'Meals',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {
                        onSelectScreen('meals');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        size: 26,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      title: Text(
                        'Filters',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {
                        onSelectScreen('filters');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

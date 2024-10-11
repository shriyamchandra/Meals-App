import 'dart:ui'; // For ImageFilter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/providers/favorites_provider.dart';

class MealDetailsScreen extends ConsumerWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);
    final isFavorite = favoriteMeals.contains(meal);

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Hero(
            tag: meal.id,
            child: Image.network(
              meal.imageUrl,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Blurred background
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
            child: Container(
              color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
            ),
          ),
          // Content
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  meal.title,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.white, // White text for better contrast
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      final wasAdded = ref
                          .read(favoriteMealsProvider.notifier)
                          .toggleMealFavoriteStatus(meal);
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              wasAdded ? 'Meal added as a favorite.' : 'Meal removed.'),
                        ),
                      );
                    },
                    icon: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, animation) {
                        return RotationTransition(
                          turns: Tween(begin: 0.8, end: 1.0).animate(animation),
                          child: child,
                        );
                      },
                      child: Icon(
                        isFavorite ? Icons.star : Icons.star_border,
                        key: ValueKey(isFavorite),
                        color: Colors.white, // White icon for better contrast
                      ),
                    ),
                  ),
                ],
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    meal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ingredients',
                            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: Colors.white, // White text for better contrast
                              fontSize: 24, // Increase font size
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.5),
                                  offset: Offset(1, 1),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          for (final ingredient in meal.ingredients)
                            Text(
                              '• $ingredient',
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.white, // White text for better contrast
                                fontSize: 18, // Increase font size
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: const Offset(1, 1),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ),
                          const SizedBox(height: 24),
                          Text(
                            'Steps',
                            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: Colors.white, // White text for better contrast
                              fontSize: 24, // Increase font size
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.5),
                                  offset: const Offset(1, 1),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 0),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: meal.steps.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${index + 1}.', // Step number
                                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: Colors.white, // White text for better contrast
                                        fontSize: 18, // Increase font size
                                        shadows: [
                                          Shadow(
                                            color: Colors.black.withOpacity(0.5),
                                            offset: Offset(1, 1),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        meal.steps[index],
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                          color: Colors.white, // White text for better contrast
                                          fontSize: 18, // Increase font size
                                          shadows: [
                                            Shadow(
                                              color: Colors.black.withOpacity(0.5),
                                              offset: Offset(1, 1),
                                              blurRadius: 4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
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

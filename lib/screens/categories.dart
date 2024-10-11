import 'dart:ui'; // For ImageFilter
import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/category_grid_item.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
    required this.availableMeals,
  });

  final List<Meal> availableMeals;

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final opacityTween = Tween<double>(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          );
          final scaleTween = Tween<double>(begin: 0.8, end: 1.0).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          );
          final blurTween = Tween<double>(begin: 5.0, end: 0.0).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          );

          return FadeTransition(
            opacity: opacityTween,
            child: ScaleTransition(
              scale: scaleTween,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: blurTween.value,
                  sigmaY: blurTween.value,
                ),
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image with blur
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Image.asset(
                'assets/images/pexels-valeriya-842571.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main content
          Column(
            children: [
              // Title Container replacing the AppBar

              // Main content below the title
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(24),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: availableCategories.length,
                  itemBuilder: (context, index) {
                    final category = availableCategories[index];
                    return CategoryGridItem(
                      category: category,
                      onSelectCategory: () {
                        _selectCategory(context, category);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

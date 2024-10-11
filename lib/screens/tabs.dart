import 'dart:ui'; // For ImageFilter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/screens/categories.dart';
import 'package:meals/screens/filters.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/widgets/main_drawer.dart';
import 'package:meals/providers/favorites_provider.dart';
import 'package:meals/providers/filters_provider.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> with SingleTickerProviderStateMixin {
  int _selectedPageIndex = 0;
  late AnimationController _iconAnimationController;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();

    _iconAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _iconAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.elasticOut,
      ),
    );
  }

  @override
  void dispose() {
    _iconAnimationController.dispose();
    super.dispose();
  }

  void _selectPage(int index) {
    if (_selectedPageIndex != index) {
      setState(() {
        _selectedPageIndex = index;
      });
      // Trigger the bounce animation when a tab is selected
      _iconAnimationController.forward().then((_) => _iconAnimationController.reverse());
    }
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      await Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const FiltersScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var opacityTween = Tween<double>(begin: 0.0, end: 1.0).chain(
              CurveTween(curve: Curves.easeInOutQuad),
            );

            var scaleTween = Tween<double>(begin: 0.8, end: 1.0).chain(
              CurveTween(curve: Curves.easeInOutQuad),
            );

            var blurTween = Tween<double>(begin: 5.0, end: 0.0).chain(
              CurveTween(curve: Curves.easeInOutQuad),
            );

            return FadeTransition(
              opacity: animation.drive(opacityTween),
              child: ScaleTransition(
                scale: animation.drive(scaleTween),
                child: AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    return BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: blurTween.evaluate(animation),
                        sigmaY: blurTween.evaluate(animation),
                      ),
                      child: child,
                    );
                  },
                  child: child,
                ),
              ),
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMeals = ref.watch(filteredMealsProvider);

    Widget activePage = CategoriesScreen(
      availableMeals: availableMeals,
    );
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(
        meals: favoriteMeals,
      );
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: Stack(
        children: [
          // Background image with blur
          Positioned.fill(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/pexels-valeriya-842571.jpg', // Use your local image
                  fit: BoxFit.cover,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
                  ),
                ),
              ],
            ),
          ),
          // Active page content
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              var opacityTween = Tween<double>(begin: 0.0, end: 1.0).chain(
                CurveTween(curve: Curves.easeInOutQuad),
              );

              var scaleTween = Tween<double>(begin: 0.8, end: 1.0).chain(
                CurveTween(curve: Curves.easeInOutQuad),
              );

              var blurTween = Tween<double>(begin: 5.0, end: 0.0).chain(
                CurveTween(curve: Curves.easeInOutQuad),
              );

              return FadeTransition(
                opacity: animation.drive(opacityTween),
                child: ScaleTransition(
                  scale: animation.drive(scaleTween),
                  child: AnimatedBuilder(
                    animation: animation,
                    builder: (context, child) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: blurTween.evaluate(animation),
                          sigmaY: blurTween.evaluate(animation),
                        ),
                        child: child,
                      );
                    },
                    child: child,
                  ),
                ),
              );
            },
            child: activePage,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: AnimatedBuilder(
              animation: _iconAnimationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _selectedPageIndex == 0 ? _iconAnimation.value : 1.0,
                  child: child,
                );
              },
              child: const Icon(Icons.set_meal),
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: AnimatedBuilder(
              animation: _iconAnimationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _selectedPageIndex == 1 ? _iconAnimation.value : 1.0,
                  child: child,
                );
              },
              child: const Icon(Icons.star),
            ),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}

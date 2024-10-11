import 'package:shared_preferences/shared_preferences.dart';

class FavoritesPersistence {
  static const _favoritesKey = 'favoriteMeals';

  // Save favorites to SharedPreferences
  Future<void> saveFavorites(List<String> favoriteMealsIds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_favoritesKey, favoriteMealsIds);
  }

  // Load favorites from SharedPreferences
  Future<List<String>> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_favoritesKey) ?? [];
  }
}

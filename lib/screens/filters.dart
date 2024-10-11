import 'dart:ui'; // For ImageFilter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0, // Remove shadow
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
          // Content of the screen
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SwitchListTile(
                  value: activeFilters[Filter.glutenFree]!,
                  onChanged: (isChecked) {
                    ref
                        .read(filtersProvider.notifier)
                        .setFilter(Filter.glutenFree, isChecked);
                  },
                  title: Text(
                    'Gluten-free',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  subtitle: Text(
                    'Only include gluten-free meals.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  activeColor: Theme.of(context).colorScheme.tertiary,
                  contentPadding: const EdgeInsets.only(left: 34, right: 22),
                ),
                SwitchListTile(
                  value: activeFilters[Filter.lactoseFree]!,
                  onChanged: (isChecked) {
                    ref
                        .read(filtersProvider.notifier)
                        .setFilter(Filter.lactoseFree, isChecked);
                  },
                  title: Text(
                    'Lactose-free',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  subtitle: Text(
                    'Only include lactose-free meals.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  activeColor: Theme.of(context).colorScheme.tertiary,
                  contentPadding: const EdgeInsets.only(left: 34, right: 22),
                ),
                SwitchListTile(
                  value: activeFilters[Filter.vegetarian]!,
                  onChanged: (isChecked) {
                    ref
                        .read(filtersProvider.notifier)
                        .setFilter(Filter.vegetarian, isChecked);
                  },
                  title: Text(
                    'Vegetarian',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  subtitle: Text(
                    'Only include vegetarian meals.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  activeColor: Theme.of(context).colorScheme.tertiary,
                  contentPadding: const EdgeInsets.only(left: 34, right: 22),
                ),
                SwitchListTile(
                  value: activeFilters[Filter.vegan]!,
                  onChanged: (isChecked) {
                    ref
                        .read(filtersProvider.notifier)
                        .setFilter(Filter.vegan, isChecked);
                  },
                  title: Text(
                    'Vegan',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  subtitle: Text(
                    'Only include vegan meals.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  activeColor: Theme.of(context).colorScheme.tertiary,
                  contentPadding: const EdgeInsets.only(left: 34, right: 22),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

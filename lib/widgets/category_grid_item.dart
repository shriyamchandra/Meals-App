import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatefulWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  @override
  State<CategoryGridItem> createState() => _CategoryGridItemState();
}

class _CategoryGridItemState extends State<CategoryGridItem> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isLocalImage = widget.category.imageUrl.startsWith('assets/images/');

    return MouseRegion(
      onEnter: (_) => _animationController.forward(),
      onExit: (_) => _animationController.reverse(),
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: GestureDetector(
              onTap: widget.onSelectCategory,
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Background image with color overlay
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          isLocalImage
                              ? Image.asset(
                            widget.category.imageUrl,
                            fit: BoxFit.cover,
                            color: Colors.black.withOpacity(0.3), // Dim the image for readability
                            colorBlendMode: BlendMode.darken,
                          )
                              : Image.network(
                            widget.category.imageUrl,
                            fit: BoxFit.cover,
                            color: Colors.black.withOpacity(0.3), // Dim the image for readability
                            colorBlendMode: BlendMode.darken,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.6),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Centered text with modern style
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.category.title,
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.7),
                              offset: const Offset(1, 1),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

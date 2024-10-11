import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.id,
    required this.title,
    required this.imageUrl,
    this.color = Colors.orange,
  });

  final String id;
  final String title;
  final String imageUrl; // Add this line for the image URL
  final Color color;
}

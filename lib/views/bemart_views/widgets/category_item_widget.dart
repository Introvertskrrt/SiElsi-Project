import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String iconPath;
  final String label;

  const CategoryItemWidget({
    required this.iconPath,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.pink[100],
          child: Image.asset(iconPath),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

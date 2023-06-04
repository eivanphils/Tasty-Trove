import 'package:flutter/material.dart';

class CategoryTag extends StatelessWidget {
  const CategoryTag({Key? key, required this.label, required this.icon})
      : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        child: ActionChip(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          avatar: Icon(icon),
          label: Text(label),
        ));
  }
}

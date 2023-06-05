import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';

class CategoryTag extends StatelessWidget {
  const CategoryTag(
      {Key? key, required this.label, this.icon, required this.isSelected})
      : super(key: key);

  final String label;
  final IconData? icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        child: ActionChip(
          labelStyle: TextStyle(
              color: isSelected ? Colors.white : AppTheme.greyColor,
              fontWeight: FontWeight.bold),
          backgroundColor: isSelected
              ? AppTheme.primaryColor.withOpacity(0.8)
              : Colors.white,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          avatar: icon != null
              ? Icon(
                  icon,
                  color: isSelected ? Colors.white : AppTheme.greyColor,
                )
              : null,
          label: Text(label),
        ));
  }
}

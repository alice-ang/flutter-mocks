import 'package:flutter/material.dart';

class IconBadge extends StatelessWidget {
  const IconBadge({
    super.key,
    this.backgroundColor,
    required this.icon,
    this.iconColor,
  });

  final Color? backgroundColor;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        color: backgroundColor ?? const Color(0xff77b39d),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        icon,
        color: iconColor ?? Colors.white,
      ),
    );
  }
}

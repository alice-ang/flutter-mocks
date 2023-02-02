import 'package:flutter/material.dart';

class StylizedTextButton extends StatelessWidget {
  const StylizedTextButton({
    required this.text,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.onPressed,
    super.key,
  });

  final String text;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xff77b39d),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

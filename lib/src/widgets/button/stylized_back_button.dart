import 'package:flutter/material.dart';

class StylizedBackButton extends StatelessWidget {
  const StylizedBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff7a5e7e),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

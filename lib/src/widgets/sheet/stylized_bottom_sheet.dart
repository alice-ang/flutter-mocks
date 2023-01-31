import 'package:flutter/material.dart';

class StylizedBottomSheet extends StatelessWidget {
  const StylizedBottomSheet({required this.content, super.key});

  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: content,
        ),
      ),
    );
  }
}

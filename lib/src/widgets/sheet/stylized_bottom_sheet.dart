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
        padding: EdgeInsets.only(
          bottom: const Size.fromHeight(kToolbarHeight).height,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: content,
        ),
      ),
    );
  }
}

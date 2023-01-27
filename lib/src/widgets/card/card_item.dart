import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    this.items = const <Widget>[],
    this.height,
    this.width,
    this.onTap,
  });

  final List<Widget> items;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height,
        width: width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          color: Colors.white,
          shadowColor: Colors.black.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: items,
            ),
          ),
        ),
      ),
    );
  }
}

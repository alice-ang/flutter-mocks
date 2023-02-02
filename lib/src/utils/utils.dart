import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/discount_badge.dart';
import 'package:new_flutter_template/styles/styles.dart';

class ScreenArguments {
  final String title;
  final String? subtitle;
  final String? description;

  const ScreenArguments(this.title, this.subtitle, this.description);
}

const _defaultColor = Color(0xFF34568B);

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? _defaultColor,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.index,
    required this.width,
    required this.height,
    this.discount,
    this.onTap,
  }) : super(key: key);

  final int index;
  final int width;
  final int height;
  final int? discount;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2),
        ),
        child: Stack(
          children: [
            Image.network(
              'https://picsum.photos/$width/$height?random=$index',
              width: width.toDouble(),
              height: height.toDouble(),
              fit: BoxFit.cover,
            ),
            if (discount != null) ...[
              DiscountBadge(discount: discount!),
            ],
          ],
        ),
      ),
    );
  }
}

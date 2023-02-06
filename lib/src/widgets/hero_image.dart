import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    this.content,
    this.height = 180,
    this.url,
    this.opacity = 0.2,
    this.filterColor = Colors.black,
    final super.key,
  });

  final double opacity;
  final double height;
  final String? url;
  final Widget? content;
  final Color filterColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            filterColor.withOpacity(opacity),
            BlendMode.srcOver,
          ),
          image: NetworkImage(
            url ??
                "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&",
          ),
        ),
      ),
      child: content,
    );
  }
}

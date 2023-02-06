import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({
    required this.listItem,
    required this.title,
    required this.restorationId,
    required this.height,
    this.onSeeAll,
    super.key,
  });

  final Widget listItem;
  final String? title;
  final String restorationId;
  final VoidCallback? onSeeAll;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (title != null) ...[
                Text(
                  title!,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              if (onSeeAll != null) ...[
                GestureDetector(
                  onTap: onSeeAll,
                  child: const Text(
                    "See all",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ],
          ),
        ),
        SizedBox(
          height: height,
          child: ListView.builder(
            restorationId: restorationId,
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 16 : 0,
                right: 16,
              ),
              child: listItem,
            ),
          ),
        ),
      ],
    );
  }
}

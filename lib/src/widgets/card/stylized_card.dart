import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class StylizedCard extends StatelessWidget {
  const StylizedCard({
    required this.title,
    required this.subtitle,
    this.discount,
    this.isFavorite = false,
    this.extent,
    this.onTap,
    this.index = 1,
    super.key,
  });

  final VoidCallback? onTap;
  final String title;
  final String subtitle;
  final bool isFavorite;
  final int? discount;
  final double? extent;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: extent,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://picsum.photos/1920/1080?random=$index"),
                            ),
                          ),
                        ),

                        // Badge
                        if (discount != null)
                          DiscountBadge(discount: discount!),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  subtitle,
                                  style: const TextStyle(),
                                ),
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                )
                              ],
                            ),
                            Flexible(
                              child: Text(
                                title,
                                maxLines: 1,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

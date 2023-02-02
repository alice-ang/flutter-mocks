import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';
import 'package:new_flutter_template/styles/styles.dart';

class StylizedCard extends StatelessWidget {
  const StylizedCard({
    required this.title,
    required this.subtitle,
    this.discount,
    this.isFavorite = false,
    this.extent,
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;
  final String title;
  final String subtitle;
  final bool isFavorite;
  final int? discount;
  final double? extent;

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
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&"),
                              ),
                            ),
                          ),

                          // Badge
                          if (discount != null)
                            DiscountBadge(discount: discount!),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              width: 2,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    subtitle,
                                    style: const TextStyle(),
                                  ),
                                ),
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                )
                              ],
                            ),
                            Expanded(
                              child: Text(
                                title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
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

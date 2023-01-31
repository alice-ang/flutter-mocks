import 'package:flutter/material.dart';
import 'package:new_flutter_template/styles/styles.dart';

class StylizedCard extends StatelessWidget {
  const StylizedCard({
    required this.title,
    required this.subtitle,
    required this.discount,
    this.isFavorite = false,
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;
  final String title;
  final String subtitle;
  final bool isFavorite;
  final int discount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: Styles.stylizedBox,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
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
                          Container(
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: const Color(0xff75b39d),
                            ),
                            child: Text(
                              '$discount %',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 2,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                subtitle,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                                size: 28,
                              )
                            ],
                          ),
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

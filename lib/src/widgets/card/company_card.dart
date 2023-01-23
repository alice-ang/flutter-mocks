import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    required this.title,
    required this.subtitle,
    this.onTap,
    super.key,
  });

  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CardItem(
      onTap: onTap,
      width: 250,
      items: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.green,
                    image: DecorationImage(
                      image: AssetImage('assets/images/flutter_logo.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: const Text(
                    '70 %',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.redAccent,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: Divider(
                thickness: 0.6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Text('hej'), const Text('hej')],
            ),
          ],
        )
      ],
    );
  }
}

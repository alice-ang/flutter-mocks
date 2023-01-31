import 'package:flutter/material.dart';
import 'package:new_flutter_template/styles/styles.dart';

class StylizedListTile extends StatelessWidget {
  const StylizedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.stylizedBox,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Areca Palm',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Herb',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

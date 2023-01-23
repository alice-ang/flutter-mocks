import 'package:flutter/material.dart';
import 'package:new_flutter_template/widgets/widgets.dart';

class CardItemStory extends StatelessWidget {
  const CardItemStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: CardItem(
          height: 340,
          width: 250,
          items: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/images/flutter_logo.png'),
                      )),
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
                      children: const [
                        Text(
                          'Title',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Subtitle',
                          style: TextStyle(
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
                  children: const [Text('hej'), Text('hej')],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

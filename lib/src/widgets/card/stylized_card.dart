import 'package:flutter/material.dart';
import 'package:new_flutter_template/styles/styles.dart';

class StylizedCard extends StatelessWidget {
  const StylizedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.stylizedBox,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff75b39d),
                      ),
                      child: const Text(
                        '70 %',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Herb',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          true ? Icons.favorite : Icons.favorite_outline,
                          color: Colors.redAccent,
                        )
                      ],
                    ),
                    const Text(
                      'Areca Palm',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

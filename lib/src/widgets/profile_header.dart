import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Hey',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Alice Anglesjö!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Text(
                'Today, 21 july',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const Image(
              height: 60,
              width: 60,
              image: AssetImage('assets/images/flutter_logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}

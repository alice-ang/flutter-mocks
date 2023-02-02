import 'package:flutter/material.dart';
import 'package:new_flutter_template/styles/styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.stylizedBox,
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.search,
            ),
          ),
          const Expanded(
            child: Text(
              'Search here..',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff77b39d),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 2),
            ),
            child: IconButton(
              onPressed: () {
                print('Search');
              },
              icon: const Icon(
                Icons.tune,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class BottomBarStory extends StatelessWidget {
  const BottomBarStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        // ignore: avoid_print
        onTap: (index) => print(index),
      ),
    );
  }
}

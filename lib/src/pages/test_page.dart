import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(
        title: 'Test page',
        hasBorder: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text('Test'),
            ),
          )
        ],
      ),
    );
  }
}

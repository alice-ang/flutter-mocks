import 'package:flutter/material.dart';

class BottomBarStory extends StatelessWidget {
  const BottomBarStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 160,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text("Hello Alice!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background: Container(
                  color: Colors.red,
                  child: const Text('hej'),
                ),
              ),
            ),
          ];
        },
        body: const Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }
}

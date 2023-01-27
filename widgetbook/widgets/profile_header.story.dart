import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

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
                title: Text("Hello Alice!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background: Container(
                  color: Colors.red,
                  child: Text('hej'),
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }
}

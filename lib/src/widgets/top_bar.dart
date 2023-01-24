import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopBar extends StatelessWidget {
  TopBar({this.actions, super.key});

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.grey.withOpacity(0.7),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.more_horiz,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }
}

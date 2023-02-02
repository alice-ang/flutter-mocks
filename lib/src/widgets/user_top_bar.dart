import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/widgets/widgets.dart';

class UserTopBar extends StatelessWidget implements PreferredSizeWidget {
  const UserTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: kToolbarHeight,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      backgroundColor: Colors.amberAccent,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.face),
                    ),
                  ),
                  Text(
                    "Hello Alice!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0.0, kToolbarHeight - 32),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchBar(),
            ),
          ),
        ],
      ),
    );
    ;
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 64);
}

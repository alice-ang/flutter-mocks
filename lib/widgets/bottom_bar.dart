import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomBar extends HookWidget {
  const BottomBar({super.key, required this.onTap});

  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final currentIdx = useState(0);

    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIdx.value,
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.deepPurpleAccent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Settings')
      ],
    );
  }
}

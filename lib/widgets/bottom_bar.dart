import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomBar extends HookWidget {
  const BottomBar({super.key, required this.onTap});

  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final currentIdx = useState(0);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      currentIndex: currentIdx.value,
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.deepPurpleAccent,
      unselectedItemColor: Colors.grey.withOpacity(0.7),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.question_mark_outlined), label: 'Discover'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favorite'),
      ],
    );
  }
}

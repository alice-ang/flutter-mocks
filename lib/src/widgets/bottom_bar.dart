import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class BottomBar extends HookWidget {
  const BottomBar({super.key, required this.onTap});

  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final currentIdx = useState(0);

    return Stack(
      children: [
        Transform.translate(
          offset: const Offset(0.0, 50),
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
        FloatingNavbar(
          selectedBackgroundColor: const Color(0xff7a5e7e),
          backgroundColor: const Color(0xff7a5e7e),
          onTap: onTap,
          iconSize: 28,
          currentIndex: currentIdx.value,
          items: [
            FloatingNavbarItem(
              customWidget: NavItem(
                Icons.home,
                isSelected: true,
              ),
            ),
            FloatingNavbarItem(
              customWidget: NavItem(
                Icons.explore,
              ),
            ),
            FloatingNavbarItem(
              customWidget: NavItem(
                Icons.chat_bubble,
              ),
            ),
            FloatingNavbarItem(
              customWidget: NavItem(
                Icons.settings,
              ),
            ),
          ],
        ),
      ],
    );

    //     Container(
    //   height: 160,
    //   padding: EdgeInsets.only(
    //       top: 16,
    //       left: 16,
    //       right: 16,
    //       bottom: MediaQuery.of(context).size.height * 0.07),
    //   child: ClipRRect(
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(16),
    //     ),
    //     child: BottomNavigationBar(
    //       type: BottomNavigationBarType.fixed,
    //       onTap: onTap,
    //       currentIndex: currentIdx.value,
    //       backgroundColor: const Color(0xff7a5e7e),
    //       selectedItemColor: Colors.black,
    //       unselectedItemColor: Colors.white,
    //       showSelectedLabels: false,
    //       showUnselectedLabels: false,
    //       iconSize: 35,
    //       elevation: 0,
    //       items: [
    //         BottomNavigationBarItem(
    //           icon: Container(
    //               padding:
    //                   const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    //               decoration: BoxDecoration(
    //                 border: Border.all(
    //                   width: 1,
    //                 ),
    //                 borderRadius: BorderRadius.all(Radius.circular(16)),
    //                 color: Color(0xfffbd685),
    //               ),
    //               child: const Icon(Icons.home)),
    //           label: "Home",
    //         ),
    //         const BottomNavigationBarItem(
    //             icon: Icon(Icons.location_on), label: 'Discover'),
    //         const BottomNavigationBarItem(
    //             icon: Icon(Icons.search), label: 'Search'),
    //         const BottomNavigationBarItem(
    //             icon: Icon(Icons.notifications), label: 'Notifications'),
    //         const BottomNavigationBarItem(
    //             icon: Icon(Icons.favorite), label: 'Favorite'),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class NavItem extends StatelessWidget {
  const NavItem(
    this.icon, {
    this.isSelected = false,
    super.key,
  });

  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xfffbd685) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: isSelected ? Border.all(width: 2) : null,
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.black : Colors.white,
        size: 28,
      ),
    );
  }
}

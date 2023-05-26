import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          right: 8,
          left: 8,
        ),
        child: GNav(
          gap: 8,
          iconSize: 24,
          haptic: true,
          tabBorderRadius: 15,
          curve: Curves.easeOutExpo,
          rippleColor: Colors.grey.shade800,
          hoverColor: Colors.grey.shade700,
          tabBorder: Border.all(color: Colors.grey, width: 1),
          tabActiveBorder: Border.all(
            color: Colors.black,
            width: 1,
          ),
          tabShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
          ],
          duration: const Duration(milliseconds: 900),
          color: Colors.grey[800],
          activeColor: Colors.purple,
          tabBackgroundColor: Colors.purple.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Likes',
            ),
            GButton(
              icon: LineIcons.search,
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            )
          ],
        ),
      );
}

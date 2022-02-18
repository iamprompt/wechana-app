import 'package:flutter/material.dart';

class BottomBarItem {
  BottomBarItem({
    required this.icon,
    required this.label,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.textAlign = TextAlign.center,
  });

  final Widget icon;
  final String label;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
}

List<BottomBarItem> bottomBarItems = [
  BottomBarItem(
    icon: const Icon(Icons.home),
    label: 'Home',
  ),
  BottomBarItem(
    icon: const Icon(Icons.history),
    label: 'History',
  ),
  BottomBarItem(
    icon: const Icon(Icons.person),
    label: 'Profile',
  ),
];

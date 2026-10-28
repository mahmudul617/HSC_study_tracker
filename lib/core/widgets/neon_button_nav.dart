import 'package:flutter/material.dart';
import '../theme/neon_theme.dart';

class NeonBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NeonBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: NeonColors.surface,
      selectedItemColor: NeonColors.cyan,
      unselectedItemColor: NeonColors.textMuted,
    items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.book_outlined), activeIcon: Icon(Icons.book), label: 'Syllabus'),
        BottomNavigationBarItem(icon: Icon(Icons.timer_outlined), activeIcon: Icon(Icons.timer), label: 'Timer'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), activeIcon: Icon(Icons.bar_chart), label: 'Reports'),
        BottomNavigationBarItem(icon: Icon(Icons.menu_outlined), activeIcon: Icon(Icons.menu), label: 'More'),
      ],
    );
  }
}
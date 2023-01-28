// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContainerAppRoot extends StatelessWidget {
  final Widget child;
  const ContainerAppRoot({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    int _calculateSelectedIndex(BuildContext context) {
      final String location = GoRouterState.of(context).location;

      if (location.contains('firstBotNavItem')) {
        return 0;
      }
      if (location.contains('secondBotNavItem')) {
        return 1;
      }
      if (location.contains('thirdBotNavItem')) {
        return 2;
      }
      return 0;
    }

    void _onItemTapped(int index, BuildContext context) {
      switch (index) {
        case 0:
          GoRouter.of(context).go('/container/firstBotNavItem');
          break;
        case 1:
          GoRouter.of(context).go('/container/secondBotNavItem');
          break;
        case 2:
          GoRouter.of(context).go('/container/thirdBotNavItem');
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Conference"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Text",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Text",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Text",
          ),
        ],
      ),
      body: child,
    );
  }
}

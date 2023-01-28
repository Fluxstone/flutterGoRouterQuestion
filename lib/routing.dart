import 'package:eventapp/appRoot.dart';
import 'package:eventapp/containerApp/containerAppRoot.dart';
import 'package:eventapp/containerApp/containerMain.dart';
import 'package:eventapp/containerApp/presentation/firstScreen.dart';
import 'package:eventapp/containerApp/presentation/secondScreen.dart';
import 'package:eventapp/containerApp/presentation/thirdScreen.dart';
import 'package:eventapp/presentation/rootHomeScreen/rootHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _containerNavigatorKey = GlobalKey<NavigatorState>();

// GoRouter configuration
final routerConfig = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => AppRoot(),
      parentNavigatorKey: _rootNavigatorKey
    ),
    GoRoute(
      path: '/root/homescreen',
      builder: (context, state) => RootHomeScreen(),
      parentNavigatorKey: _rootNavigatorKey
    ),
    GoRoute(
      path: '/container/ContainerMain',
      builder: (context, state) => ContainerMain(),
      parentNavigatorKey: _rootNavigatorKey
    ),
    ShellRoute(
        navigatorKey: _containerNavigatorKey,
        builder: (context, state, child) {
          return ContainerAppRoot(child: child);
        },
        routes: [
          GoRoute(
            path: '/container/firstBotNavItem',
            parentNavigatorKey:_containerNavigatorKey,
            builder: (context, state) => FirstScreen(),
          ),
                    GoRoute(
            path: '/container/secondBotNavItem',
            parentNavigatorKey:_containerNavigatorKey,
            builder: (context, state) => SecondScreen(),
          ),
                    GoRoute(
            path: '/container/thirdBotNavItem',
            parentNavigatorKey:_containerNavigatorKey,
            builder: (context, state) => ThirdScreen(),
          ),
        ])
  ],
);

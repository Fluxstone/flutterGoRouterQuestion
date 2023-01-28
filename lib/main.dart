import 'package:flutter/material.dart';
import 'package:eventapp/routing.dart' as rtCfg;


void main() {
  runApp(
    EventOsApp(),
  );
}

class EventOsApp extends StatelessWidget {
  const EventOsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: rtCfg.routerConfig,
    );
  }
}
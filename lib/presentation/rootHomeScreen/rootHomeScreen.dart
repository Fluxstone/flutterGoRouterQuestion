// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootHomeScreen extends StatelessWidget {
  const RootHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Text",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Text",
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/container/ContainerMain');
          },
          child: Text("Button"),
        ),
      ),
    );
  }
}

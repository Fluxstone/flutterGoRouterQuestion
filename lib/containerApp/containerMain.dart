import 'package:eventapp/containerApp/containerAppRoot.dart';
import 'package:flutter/material.dart';

class ContainerMain extends StatelessWidget {
  const ContainerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerAppRoot(child: Text("Test"));
  }
}
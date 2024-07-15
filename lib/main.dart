import 'package:flutter/material.dart';
import 'package:totem_ipes/screens/home.dart';
import 'package:totem_ipes/theme/my_theme.dart';

void main() {
  runApp(const TotemIpes());
}

class TotemIpes extends StatelessWidget {
  const TotemIpes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TotemIpes',
      theme: Mytheme,
      home: const Home(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:totem_ipes/components/sections/header.dart';
import 'package:totem_ipes/screens/login.dart';
import 'package:totem_ipes/components/sections/service_unit.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Header(),
            //ServiceUnit(),
          ],
        ),
      ),
    );
  }
}

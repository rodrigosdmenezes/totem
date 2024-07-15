import 'package:flutter/material.dart';
import 'package:totem_ipes/theme/theme_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ThemeColors.primaryColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(
          16.0,
          80.0,
          16.0,
          16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text('IPESAÚDE')],
            )
          ],
        ),
      ),
    );
  }
}

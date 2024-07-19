import 'package:flutter/material.dart';
import 'package:totem_ipes/components/box_card.dart';

import '../types_password.dart';

class ServiceUnit extends StatelessWidget {
  const ServiceUnit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  showAccountActions(context);
                },
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.home),
                    text: 'CCR',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.home),
                    text: 'DIABETES',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.how_to_reg),
                    text: 'CADASTRO',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActionsContent(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}

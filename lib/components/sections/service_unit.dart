import 'package:flutter/material.dart';
import 'package:totem_ipes/components/box_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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

void showAccountActions(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Selecione o tipo de senha'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              trailing: const Icon(Icons.emoji_people),
              title: const Text('Senha Normal'),
              titleTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              onTap: () {
                // Lógica para lidar com a seleção de senha normal
                Navigator.pop(context);
                _showSuccessDialog(context, 'Senha Normal');
              },
            ),
            ListTile(
              trailing: const Icon(Icons.accessible),
              title: const Text('Senha Preferencial'),
              titleTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              onTap: () {
                // Lógica para lidar com a seleção de senha preferencial
                Navigator.pop(context);
                _showSuccessDialog(context, 'Senha Preferencial');
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}

void _showSuccessDialog(BuildContext context, String tipoSenha) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$tipoSenha impressa com sucesso'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 48),
            SizedBox(height: 10),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}

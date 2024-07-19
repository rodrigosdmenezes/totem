import 'package:flutter/material.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancelar'),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                  foregroundColor:
                      WidgetStateProperty.all<Color>(Colors.black),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
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
        content: const Column(
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

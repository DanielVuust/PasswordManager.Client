import 'package:flutter/material.dart';

import '../../models/dto_models/password.dart';

class HomePasswordStoreCardOpenButton extends StatelessWidget {
  const HomePasswordStoreCardOpenButton({super.key, required this.password});
  final Password password;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/passwordStore',
              arguments: password,
            );
          },
          child: const Text(
            "Åbn",
            textAlign: TextAlign.end,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
    );
  }
}

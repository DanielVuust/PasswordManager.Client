import 'package:flutter/material.dart';
import 'package:password_manager_client/models/interfaces/i_vault_value.dart';

class HomeVaultValueCardOpenButton extends StatelessWidget {
  const HomeVaultValueCardOpenButton({super.key, required this.vaultValue});
  final IVaultValue vaultValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/vaultValueScreen',
              arguments: vaultValue,
            );
          },
          child: const Text(
            "Open",
          )),
    );
  }
}

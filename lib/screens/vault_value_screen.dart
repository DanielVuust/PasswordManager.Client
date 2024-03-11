import 'package:flutter/material.dart';
import 'package:password_manager_client/models/interfaces/i_vault_value.dart';
import 'package:password_manager_client/widgets/shared/animations/animated_hive_background.dart';
import 'package:password_manager_client/widgets/vault_value_screen/vault_value_container.dart';


class VaultValueScreen extends StatelessWidget {
  const VaultValueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = (ModalRoute.of(context)?.settings.arguments) as IVaultValue;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vault Value"),
      ),
      body: AnimatedHiveBackground(child: VaultValueContainer(vaultValue: argument,)),
    );
  }
}

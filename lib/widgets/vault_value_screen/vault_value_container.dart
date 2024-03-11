import 'package:flutter/material.dart';
import 'package:password_manager_client/models/enums/vault_value_type.dart';
import 'package:password_manager_client/models/interfaces/i_vault_value.dart';
import 'package:password_manager_client/widgets/shared/cards/themed_card.dart';
import 'package:password_manager_client/widgets/vault_value_screen/password_vault_value/password_vault_value_container.dart';

class VaultValueContainer extends StatelessWidget {
  const VaultValueContainer({super.key, required this.vaultValue});
  final IVaultValue vaultValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ThemedCard(
        child: SingleChildScrollView(
          child: switch (vaultValue.type) {
            VaultValueType.password => PasswordVaultValueContainer(vaultValue: vaultValue,),
            VaultValueType.creditCard => Container(),
            null => Container(),
          },
          
        ),
      ),
    );
  }
}

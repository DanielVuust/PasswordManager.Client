import 'package:flutter/material.dart';

import '../widgets/create_new_vault_values_widgets.dart/create_vault_value_container.dart';

class CreateVaultValueScreen extends StatelessWidget {
  const CreateVaultValueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create new vault value")),
      body: const CreateVaultValueContainer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_client/models/blocs/vault_bloc/bloc/vault_bloc.dart';
import 'package:password_manager_client/models/dto_models/password.dart';
import 'package:password_manager_client/models/interfaces/i_vault_value.dart';
import 'package:password_manager_client/widgets/vault_value_screen/password_vault_value/password_screen_input_section.dart';

class PasswordVaultValueContainer extends StatelessWidget {
  const PasswordVaultValueContainer({super.key, required this.vaultValue});
  final IVaultValue vaultValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Edit Password", style: Theme.of(context).textTheme.headlineMedium),
        PasswordScreenInputSection(password:  vaultValue as Password),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<VaultBloc>(context)
                .eventSink
                .add(SaveVaultPasswordValues(vaultValue as Password));
            Navigator.pop(context);
          },
          child: Text("Save"),
        ),
      ],
    );
  }
}

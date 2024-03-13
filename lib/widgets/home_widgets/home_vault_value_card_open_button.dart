import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_client/models/blocs/create_vault_value_bloc/bloc/edit_vault_value_bloc.dart';
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
            BlocProvider.of<EditVaultValueBloc>(context).eventSink.add(SetVaultValue(vaultValue));
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

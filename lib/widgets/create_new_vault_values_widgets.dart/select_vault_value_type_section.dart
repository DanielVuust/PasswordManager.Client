import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_client/models/blocs/create_vault_value_bloc/bloc/create_vault_value_bloc.dart';

class SelectVaultValueTypeSection extends StatelessWidget {
  const SelectVaultValueTypeSection({super.key, required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: const <DropdownMenuEntry<dynamic>>[
        DropdownMenuEntry(value: "password", label: "Password"),
        DropdownMenuEntry(value: "creditCard", label: "Credit card"),
      ],
      initialSelection: value,
      onSelected: (value) {
        BlocProvider.of<CreateVaultValueBloc>(context)
            .eventSink
            .add(SetVaultValueType(value));
      },
    );
  }
}

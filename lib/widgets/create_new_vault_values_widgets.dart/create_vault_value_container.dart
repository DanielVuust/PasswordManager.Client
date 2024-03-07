import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_client/widgets/create_new_vault_values_widgets.dart/password/create_password_vault_value_input_container.dart';
import 'package:password_manager_client/widgets/create_new_vault_values_widgets.dart/select_vault_value_type_section.dart';
import 'package:password_manager_client/widgets/shared/cards/themed_card.dart';

import '../../models/blocs/create_vault_value_bloc/bloc/create_vault_value_bloc.dart';

class CreateVaultValueContainer extends StatefulWidget {
  const CreateVaultValueContainer({super.key});

  @override
  State<CreateVaultValueContainer> createState() =>
      _CreateVaultValueContainerState();
}

class _CreateVaultValueContainerState extends State<CreateVaultValueContainer> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CreateVaultValueState>(
        stream: BlocProvider.of<CreateVaultValueBloc>(context)
            .createVaultValueState,
        initialData: CreateVaultValueInitial(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Placeholder();
          } else {
            return ThemedCard(
              child: Column(
                children: [
                  const Text("Create new Vault Value"),
                  SelectVaultValueTypeSection(value: snapshot.data!.valueType),
                  if (snapshot.data!.valueType == "password")
                    CreatePasswordVaultValueInputContainer(
                      newPassword: snapshot.data!.newPassword,
                    ),
                  if (snapshot.data!.valueType == "creditCard") Placeholder(),
                ],
              ),
            );
          }
        });
  }
}

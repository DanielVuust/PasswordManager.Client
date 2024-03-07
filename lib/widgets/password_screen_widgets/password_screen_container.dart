import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_client/models/blocs/vault_bloc/bloc/vault_bloc.dart';
import 'package:password_manager_client/widgets/password_screen_widgets/password_screen_input_section.dart';
import 'package:password_manager_client/widgets/shared/cards/themed_card.dart';

import '../../models/dto_models/password.dart';

class PasswordScreenContainer extends StatelessWidget {
  const PasswordScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final password = (ModalRoute.of(context)?.settings.arguments) as Password;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ThemedCard(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PasswordScreenInputSection(password: password),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<VaultBloc>(context)
                      .eventSink
                      .add(SaveVaultPasswordValues(password));
                  Navigator.pop(context);
                },
                child: Text("Gem"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

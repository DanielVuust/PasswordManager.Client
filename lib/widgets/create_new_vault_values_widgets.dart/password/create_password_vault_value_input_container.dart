import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_client/models/blocs/create_vault_value_bloc/bloc/create_vault_value_bloc.dart';

import '../../../models/dto_models/password.dart';

class CreatePasswordVaultValueInputContainer extends StatelessWidget {
  const CreatePasswordVaultValueInputContainer(
      {super.key, required this.newPassword});
  final Password newPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: TextEditingController(text: newPassword.title),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Name',
          ),
          onChanged: (value) {
            newPassword.title = value;
          },
        ),
        TextFormField(
          controller: TextEditingController(text: newPassword.url),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Url',
          ),
          onChanged: (value) {
            newPassword.url = value;
          },
        ),
        TextFormField(
          controller: TextEditingController(text: newPassword.username),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Username',
          ),
          onChanged: (value) {
            newPassword.username = value;
          },
        ),
        TextFormField(
          controller: TextEditingController(text: newPassword.key),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Password',
          ),
          onChanged: (value) {
            newPassword.key = value;
          },
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        ),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CreateVaultValueBloc>(context)
                .eventSink
                .add(SaveVaultValueType());
          },
          child: Text("Save"),
        )
      ],
    );
  }
}

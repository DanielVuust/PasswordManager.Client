import 'package:flutter/material.dart';

import '../../models/dto_models/password.dart';

class PasswordScreenInputSection extends StatelessWidget {
  const PasswordScreenInputSection({super.key, required this.password});
  final Password password;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: TextEditingController(text: password.friendlyName),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Name',
          ),
          onChanged: (value) {
            password.friendlyName = value;
          },
        ),
        TextFormField(
          controller: TextEditingController(text: password.url),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Url',
          ),
          onChanged: (value) {
            password.url = value;
          },
        ),
        TextFormField(
          controller: TextEditingController(text: password.username),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Username',
          ),
          onChanged: (value) {
            password.username = value;
          },
        ),
        TextFormField(
          controller: TextEditingController(text: password.password),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Password',
          ),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          onChanged: (value) {
            password.password = value;
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:password_manager_client/widgets/password_screen_widgets/password_screen_container.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stored Password"),
      ),
      body: const PasswordScreenContainer(),
    );
  }
}

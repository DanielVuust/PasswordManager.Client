import 'package:flutter/material.dart';
import 'package:password_manager_client/widgets/home_widgets/home_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/createVaultValue');
        },
        child: Icon(Icons.add),
      ),
      body: HomeContainer(),
    );
  }
}

import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:password_manager_client/widgets/home_widgets/home_container.dart';
import 'package:password_manager_client/widgets/shared/animations/animated_hive_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/createVaultValue');
          },
          child: Icon(Icons.add),
        ),
        body: const AnimatedHiveBackground(
          child: HomeContainer(),
        ));
  }
}

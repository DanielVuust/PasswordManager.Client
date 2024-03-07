// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:password_manager_client/widgets/home_widgets/home_header_text.dart';

import 'home_password_stores.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: HomeHeaderText(),
        ),
        HomePasswordStores()
      ],
    );
  }
}

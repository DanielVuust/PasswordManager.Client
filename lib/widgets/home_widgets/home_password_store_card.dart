// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:password_manager_client/widgets/shared/cards/themed_card.dart';

import '../../models/dto_models/password.dart';
import 'home_password_store_card_open.dart';

class HomePasswordStoreCard extends StatelessWidget {
  const HomePasswordStoreCard({super.key, required this.password});
  final Password password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        child: ThemedCard(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        password.friendlyName ?? "",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Text(
                        password.url ?? "",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  HomePasswordStoreCardOpen(
                    password: password,
                  )
                ]),
          ),
        ));
  }
}

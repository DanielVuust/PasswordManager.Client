// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:password_manager_client/models/interfaces/i_vault_value.dart';
import 'package:password_manager_client/widgets/shared/cards/themed_card.dart';

import 'home_vault_value_card_open_button.dart';

class HomeVaultValueCard extends StatelessWidget {
  const HomeVaultValueCard({super.key, required this.vaultValue});
  final IVaultValue vaultValue;

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
                        vaultValue.title ?? "",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Text(
                        vaultValue.subTitle ?? "",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  HomeVaultValueCardOpenButton(
                    vaultValue: vaultValue,
                  )
                ]),
          ),
        ));
  }
}

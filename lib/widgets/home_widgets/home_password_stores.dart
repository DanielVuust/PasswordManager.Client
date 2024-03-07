import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_client/models/blocs/vault_bloc/bloc/vault_bloc.dart';

import 'home_password_store_card.dart';

class HomePasswordStores extends StatefulWidget {
  const HomePasswordStores({super.key});

  @override
  State<HomePasswordStores> createState() => _HomePasswordStoresState();
}

class _HomePasswordStoresState extends State<HomePasswordStores> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<VaultState>(
      stream: BlocProvider.of<VaultBloc>(context).vaultState,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print("test");
          return Align(alignment: Alignment.topCenter, child: Placeholder());
        } else if (!snapshot.hasData) {
          print(snapshot.data);
          return Placeholder();
        } else {
          var list = List<HomePasswordStoreCard>.generate(
            snapshot.data!.passwords.length,
            (i) => HomePasswordStoreCard(password: snapshot.data!.passwords[i]),
          );

          return Flexible(
            child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: list),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<VaultBloc>(context).eventSink.add(GetVaultValues());
  }
}

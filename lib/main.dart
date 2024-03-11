import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:password_manager_client/routes.dart';
import 'package:password_manager_client/screens/auth_screen.dart';
import 'package:password_manager_client/utilities/themes/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'models/blocs/auth_bloc/bloc/auth_bloc.dart';
import 'models/blocs/create_vault_value_bloc/bloc/create_vault_value_bloc.dart';
import 'models/blocs/vault_bloc/bloc/vault_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AuthBloc(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => VaultBloc(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => CreateVaultValueBloc(),
          lazy: true,
        )
      ],
      child: Material(
        type: MaterialType.transparency,
        child: MaterialApp(
          title: 'Password Manager',
          theme: CustomTheme.lightTheme,
          routes: appRoutes,
          home: const Center(
            child: AuthScreen(),
          ),
        ),
      ),
    );
  }
}

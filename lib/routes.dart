import 'package:password_manager_client/screens/create_vautl_value_screen.dart';
import 'package:password_manager_client/screens/home_screen.dart';
import 'package:password_manager_client/screens/password_screen.dart';

var appRoutes = {
  '/home': (context) => const HomeScreen(),
  '/passwordStore': (context) => const PasswordScreen(),
  '/createVaultValue': (context) => const CreateVaultValueScreen(),
};

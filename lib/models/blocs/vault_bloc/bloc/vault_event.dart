part of 'vault_bloc.dart';

abstract class VaultEvent {
  var logger = Logger();
  execute(VaultState state);
}

class GetVaultValues extends VaultEvent {

  PasswordServiceManager passwordServiceManager = PasswordServiceManager();

  @override
  execute(VaultState state) async {

    var passwordsFuture = passwordServiceManager.getPasswords();
    var passwords = await passwordsFuture;

    state.vaultValue = passwords;

    state.vaultValue.sort((a, b) => a.id!.compareTo(b.id!));
    return state;
  }
}
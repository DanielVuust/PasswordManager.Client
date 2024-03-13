part of 'vault_bloc.dart';

abstract class VaultEvent {
  var logger = Logger();
  execute(VaultState state);
}

class GetVaultValues extends VaultEvent {
  @override
  execute(VaultState state) async {

    var passwordsFuture = PasswordServiceManager().getPasswords();
    var passwords = await passwordsFuture;

    state.vaultValue = passwords;

    state.vaultValue.sort((a, b) => a.id!.compareTo(b.id!));
    return state;
  }
}

class SaveVaultPasswordValues extends VaultEvent {

  SaveVaultPasswordValues(this.newPasswordValues);
  final Password newPasswordValues;

  @override
  execute(VaultState state) async {
    await Future.delayed(Duration(seconds: 1));
    //TODO save value to backend.
    state.vaultValue.removeWhere((i) => i.id == newPasswordValues.id);
    state.vaultValue.add(newPasswordValues);
    state.vaultValue.sort((a, b) => a.id!.compareTo(b.id!));
    return state;
  }
}

class CreateVaultValueType extends VaultEvent {
  CreateVaultValueType(this.vaultValue);
  final IVaultValue vaultValue;

  @override
  execute(VaultState state) async {
    if (vaultValue.type == VaultValueType.password) {
      
      PasswordServiceManager().createPassword(vaultValue as Password);
    }

    return state;
  }
}

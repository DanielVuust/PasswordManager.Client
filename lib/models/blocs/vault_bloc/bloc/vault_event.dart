part of 'vault_bloc.dart';

abstract class VaultEvent {
  var log = logger(VaultEvent);
  execute(VaultState state);
}

class GetVaultValues implements VaultEvent {
  @override
  Logger log = logger(VaultEvent);

  @override
  execute(VaultState state) {
    //TODO get value from backend.
    state.passwords.sort((a, b) => a.id!.compareTo(b.id!));

    return state;
  }
}

class SaveVaultPasswordValues implements VaultEvent {
  @override
  Logger log = logger(VaultEvent);

  SaveVaultPasswordValues(this.newPasswordValues);
  final Password newPasswordValues;

  @override
  execute(VaultState state) async {
    await Future.delayed(Duration(seconds: 1));
    //TODO save value to backend.
    state.passwords.removeWhere((i) => i.id == newPasswordValues.id);
    state.passwords.add(newPasswordValues);
    state.passwords.sort((a, b) => a.id!.compareTo(b.id!));
    return state;
  }
}

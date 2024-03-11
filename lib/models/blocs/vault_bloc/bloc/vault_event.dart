part of 'vault_bloc.dart';

abstract class VaultEvent {
  var log = Logger();
  execute(VaultState state);
}

class GetVaultValues implements VaultEvent {
  @override
  Logger log = Logger();

  @override
  execute(VaultState state) {
    //TODO get value from backend.
    state.vaultValue.sort((a, b) => a.id!.compareTo(b.id!));

    return state;
  }
}

class SaveVaultPasswordValues implements VaultEvent {
  @override
  Logger log = Logger();

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

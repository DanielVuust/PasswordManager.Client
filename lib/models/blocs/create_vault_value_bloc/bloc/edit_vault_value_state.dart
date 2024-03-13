part of 'edit_vault_value_bloc.dart';

sealed class EditVaultValueState {
  late VaultValueType valueType = VaultValueType.password;
  late IVaultValue vaultValue = Password();
  late bool isSaveDone = false;
  late double generatePasswordLength = 64;
}

final class EditVaultValueInitial extends EditVaultValueState {}

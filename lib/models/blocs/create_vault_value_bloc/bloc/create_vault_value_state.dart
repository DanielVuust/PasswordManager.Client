part of 'create_vault_value_bloc.dart';

sealed class CreateVaultValueState {
  String valueType = "password";
  late Password newPassword = Password();
  late bool isSaveDone = false;
}

final class CreateVaultValueInitial extends CreateVaultValueState {}

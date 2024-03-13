part of 'vault_bloc.dart';

sealed class VaultState {
  late List<IVaultValue> vaultValue = <IVaultValue>[];
}

final class VaultInitial extends VaultState {}

part of 'vault_bloc.dart';

sealed class VaultState {
  late List<IVaultValue> vaultValue = <IVaultValue>[
    Password(
        id: 1,
        url: "google.com",
        key: "password",
        username: "username",
        title: "Mit password til google"),
    Password(
        id: 2,
        url: "facebook.com",
        key: "password",
        username: "username",
        title: "Mit password til facebook"),
    Password(
        id: 3,
        url: "youtube.com",
        key: "password",
        username: "username",
        title: "Mit password til youtube"),
    Password(
        id: 4,
        url: "x.com",
        key: "password",
        username: "username",
        title: "Mit password til x"),
    Password(
        id: 5,
        url: "flutter.dev",
        key: "password",
        username: "username",
        title: "Mit password til flutter dev"),
  ];
}

final class VaultInitial extends VaultState {}

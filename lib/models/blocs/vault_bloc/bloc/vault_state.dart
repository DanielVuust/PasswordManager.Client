part of 'vault_bloc.dart';

@immutable
sealed class VaultState {
  late List<Password> passwords = <Password>[
    Password(
        id: 1,
        url: "google.com",
        password: "password",
        username: "username",
        friendlyName: "Mit password til google"),
    Password(
        id: 2,
        url: "facebook.com",
        password: "password",
        username: "username",
        friendlyName: "Mit password til facebook"),
    Password(
        id: 3,
        url: "youtube.com",
        password: "password",
        username: "username",
        friendlyName: "Mit password til youtube"),
    Password(
        id: 4,
        url: "x.com",
        password: "password",
        username: "username",
        friendlyName: "Mit password til x"),
    Password(
        id: 5,
        url: "flutter.dev",
        password: "password",
        username: "username",
        friendlyName: "Mit password til flutter dev"),
  ];
}

final class VaultInitial extends VaultState {}

part of 'create_vault_value_bloc.dart';

abstract class CreateVaultValueEvent {
  var log = logger(CreateVaultValueEvent);
  execute(CreateVaultValueState state);
}

class SetVaultValueType implements CreateVaultValueEvent {
  @override
  Logger log = logger(CreateVaultValueEvent);

  SetVaultValueType(this.type);
  final String type;

  @override
  execute(CreateVaultValueState state) {
    state.valueType = type;
    return state;
  }
}

class SaveVaultValueType implements CreateVaultValueEvent {
  @override
  Logger log = logger(CreateVaultValueEvent);

  SaveVaultValueType();

  @override
  execute(CreateVaultValueState state) {
    if (state.valueType == "password") {
      //TODO send to backend.
    }

    state.isSaveDone = true;
    return state;
  }
}

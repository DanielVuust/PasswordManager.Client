part of 'create_vault_value_bloc.dart';

abstract class CreateVaultValueEvent {
  var log = Logger();
  execute(CreateVaultValueState state);
}

class SetVaultValueType implements CreateVaultValueEvent {
  @override
  Logger log = Logger();

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
  Logger log = Logger();

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

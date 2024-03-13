part of 'edit_vault_value_bloc.dart';

abstract class EditVaultValueEvent {
  final Logger logger = Logger();
  execute(EditVaultValueState state);
}

class SetVaultValueType extends EditVaultValueEvent {

  SetVaultValueType(this.type);
  final VaultValueType type;

  @override
  execute(EditVaultValueState state) {
    state.valueType = type;
    return state;
  }
  
}

class SaveVaultValue extends EditVaultValueEvent {

  SaveVaultValue(this.vaultValue);
  final IVaultValue vaultValue;
  @override
  execute(EditVaultValueState state) {
    if (state.valueType == VaultValueType.password) {
      if(state.vaultValue.id != null){
        PasswordServiceManager().updatePassword(vaultValue as Password);
      }
      else{
        PasswordServiceManager().createPassword(vaultValue as Password);
      } 
    }

    state.isSaveDone = true;
    return state;
  }
}

class SetVaultValue extends EditVaultValueEvent {

  SetVaultValue(this.vaultValue);
  final IVaultValue vaultValue;

  @override
  execute(EditVaultValueState state) {
    state.vaultValue = vaultValue;
    return state;
  }
  
}
class GenratePassword extends EditVaultValueEvent {

  GenratePassword(this.length);
  final double length;

  @override
  execute(EditVaultValueState state) async {
    (state.vaultValue as Password).password = await PasswordServiceManager().generatePassword(length);

    return state;
  }
  
}
class SetGeneratePasswordLength extends EditVaultValueEvent {

  SetGeneratePasswordLength(this.length);
  final double length;

  @override
  execute(EditVaultValueState state) {
    state.generatePasswordLength = length;
    return state;
  }
  
}

class NotifiBloc extends EditVaultValueEvent{
  @override
  execute(EditVaultValueState state) {
    return state;
  }
}


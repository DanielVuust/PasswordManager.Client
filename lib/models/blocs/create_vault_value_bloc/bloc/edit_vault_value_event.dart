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

  PasswordServiceManager passwordServiceManager = PasswordServiceManager();
  @override
  execute(EditVaultValueState state) async {
    try{

    if (vaultValue.type == VaultValueType.password) {
      if(vaultValue.id != null){
        await passwordServiceManager.updatePassword(vaultValue as Password);
      }
      else{
        await passwordServiceManager.createPassword(vaultValue as Password);
      } 
    }
    }
    on ApiException catch (e) {
      state.error = true;
      logger.e(e);
      return state;
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
class GeneratePassword extends EditVaultValueEvent {

  GeneratePassword(this.length);
  final double length;
  PasswordServiceManager passwordServiceManager = PasswordServiceManager();

  @override
  execute(EditVaultValueState state) async {
    if(state.vaultValue.type != VaultValueType.password){
      throw Exception("Invalid VaultValueType to generate password.");
    }
    try{
      (state.vaultValue as Password).password = await passwordServiceManager.generatePassword(length);

    } 
    on ApiException catch (e) {
      state.error = true;
      logger.e(e);
      return state;
    }

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


import 'package:password_manager_client/models/blocs/vault_bloc/bloc/vault_bloc.dart';
import 'package:password_manager_client/models/dto_models/password.dart';
import 'package:password_manager_client/models/interfaces/i_vault_value.dart';
import 'package:password_manager_client/services/service_managers/password_service/password_service_manager.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

class McokPasswordServiceManager extends Mock implements PasswordServiceManager {

}
void main() {
  
  test('GetVaultValues bloc event', () async {
    List<Password> passwords = [Password(id: "233", friendlyName: "3", password: "password3", url: "url3", username: "username3"), Password(id: "1", friendlyName: "name", password: "password", url: "url", username: "username"), Password(id: "323", friendlyName: "name2", password: "password2", url: "url2", username: "username2")];
    
    McokPasswordServiceManager serviceManager = McokPasswordServiceManager();

    when(() => serviceManager.getPasswords()).thenAnswer((_) async => passwords);

    GetVaultValues event = GetVaultValues();
    event.passwordServiceManager = serviceManager;
    VaultState state = VaultInitial();

    state = await event.execute(state);


    List<IVaultValue> vaultValue = [];
    vaultValue.addAll(passwords);
    vaultValue.sort((a, b) => a.id!.compareTo(b.id!));

    expect(state.vaultValue, vaultValue);
  });
}
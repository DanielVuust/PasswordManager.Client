import 'package:json_annotation/json_annotation.dart';
import 'package:password_manager_client/models/enums/vault_value_type.dart';
import 'package:password_manager_client/models/interfaces/i_vault_value.dart';
// dart run build_runner build

part 'password.g.dart';

@JsonSerializable(explicitToJson: true)
class Password implements IVaultValue{
  @override
  int? id;
  @override
  String? title, subTitle;
  @override
  VaultValueType? type = VaultValueType.password;

  late String? url, key, username;

  Password({this.id, this.url, this.key, this.username, this.title}){
    subTitle = url;
  }

  factory Password.fromJson(Map<String, dynamic> json) =>
      _$PasswordFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordToJson(this);
}

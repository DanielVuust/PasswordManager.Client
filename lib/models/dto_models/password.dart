import 'package:json_annotation/json_annotation.dart';
// dart run build_runner build

part 'password.g.dart';

@JsonSerializable(explicitToJson: true)
class Password {
  final int? id;
  late String? url, password, username, friendlyName;

  Password(
      {this.id, this.url, this.password, this.username, this.friendlyName});

  factory Password.fromJson(Map<String, dynamic> json) =>
      _$PasswordFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordToJson(this);
}

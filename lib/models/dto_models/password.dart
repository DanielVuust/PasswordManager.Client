import 'package:json_annotation/json_annotation.dart';
// dart run build_runner build

part 'password.g.dart';

@JsonSerializable(explicitToJson: true)
class Password {
  final int? id;
  late String? url, key, username, title;

  Password({this.id, this.url, this.key, this.username, this.title});

  factory Password.fromJson(Map<String, dynamic> json) =>
      _$PasswordFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordToJson(this);
}

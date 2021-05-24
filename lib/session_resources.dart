import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:serializer_test/account.dart';
import 'package:serializer_test/accounts_converter.dart';

@jsonSerializable
class SessionResource {

  String? username;
  String? apiUrl;
  String? downloadUrl;
  String? uploadUrl;
  String? eventSourceUrl;

  @JsonProperty(converter: AccountsConverter())
  Map<String, Account?>? accounts;

}
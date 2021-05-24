import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'account.dart';

class AccountsConverter implements ICustomConverter<Map<String, Account>> {
  const AccountsConverter() : super();

  @override
  Map<String, Account> fromJSON(jsonValue, [DeserializationContext? context]) {
    Map<String, Account> values ={};
    jsonValue.forEach((key, value) {
      print(value.toString());
      var account = Account();
      account.name = key;
      values[key]=account;
    });
    return values;
  }

  @override
  toJSON(Map<String, Account>? object, [SerializationContext? context]) {
    throw UnimplementedError();
  }
}
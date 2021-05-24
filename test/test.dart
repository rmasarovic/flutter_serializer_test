// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';


import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serializer_test/main.mapper.g.dart';
import 'package:serializer_test/session_resources.dart';

void main() {
  initializeJsonMapper();
  test( 'test deserialize',()  {
    String raw = readResourceAsString('test-resources/basic.json');
    var res = JsonMapper.deserialize<SessionResource>(raw);
    print(res!);
  });
}

String readResourceAsString(String uri){
  var file =  File(uri);
  var json = file.readAsStringSync().replaceAll("\r", "").replaceAll("\n", "").replaceAll(" ", "");
  return json;
}
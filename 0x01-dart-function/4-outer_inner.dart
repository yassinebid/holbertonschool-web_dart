import 'dart:ffi';

void outer(String name, String id) {
  String firstChar = name.split(' ')[1][0];
  String firstName = name.split(' ')[0];
  name = "${firstChar}.${firstName}";

  print("Hello Agent ${name} your id is ${id}");
}

String inner() {
  return "";
}

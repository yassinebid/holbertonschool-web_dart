import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    Map dataMap = jsonDecode(data);
    return dataMap['username'];
  } catch (e) {
    return ("error caught: ${e}");
  }
}

Future<String> loginUser() async {
  try {
    bool value = await checkCredentials();
    if (value) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return "Wrong credentials";
    }
  } catch (e) {
    return "error caught: ${e}";
  }
}

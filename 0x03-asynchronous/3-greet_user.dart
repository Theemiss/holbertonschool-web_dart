import 'dart:convert';
import '3-util.dart';

greetUser() async {
  try {
    var data = await fetchUserData();
    var user = json.decode(data);

    return "Hello ${user['username']}";
  } catch (error) {
    return ("error caught: ${error}");
  }
}

loginUser() async {
  try {
    var check = await checkCredentials();
    if (check == true) {
      return loginUser();
    } else {
      return "Wrong credentials";
    }
  } catch (error) {
    return "error caught: ${error}";
  }
}

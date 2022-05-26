import '6-password.dart';

class User extends Password {
  String name;
  int id;
  int age;
  double height;
  String? user_password;


  User({
    user_password,
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  }) : super(password: user_password);
  
  
  
  Map toJson() {
    return {"id": id, "name": name, "age": age, "height": height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  String showName() {
    return "Hello $name";
  }

  String toString() {
    final pass = Password(password: user_password);

    return "User(id : $id ,name: $name, age: $age, height: $height, Password: Password: ${pass.isValid()}})";
  }
}

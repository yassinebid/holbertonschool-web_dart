class User {
  String name;
  int age;
  double height;
  int id;
  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
  });

  toJson() {
    return {
      "name": this.name,
      "age": this.age,
      "height": this.height,
      "id": this.id
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        id: userJson['id']);
  }

  String toString() {
    return ("User(id : ${this.id} ,name: ${this.name},  age: ${this.age}, height: ${this.height})");
  }
}

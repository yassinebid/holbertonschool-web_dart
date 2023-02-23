class User {
  String name;
  int age;
  double height;
  User({
    required this.name,
    required this.age,
    required this.height,
  });
  toJson() {
    return {"name": this.name, "age": this.age, "height": this.height};
  }
}

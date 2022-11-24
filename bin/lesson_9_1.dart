void main(List<String> args) {
  Map<String, dynamic> data = {"name": "Shahob", "age": 21};

  Person student = Person.fromJson(data);

  print(student.name);
  print(student.age);
}

class Person {
  String? name;
  int? age;
  Person({required this.age, required this.name});
  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> dataMap = {"name": name, "age": age};

    return dataMap;
  }
}

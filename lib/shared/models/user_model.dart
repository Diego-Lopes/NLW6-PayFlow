import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  }

  factory UserModel.fromJson(String json) => UserModel.fromMap(jsonDecode(
      json)); //isso é um dadamodel, salvo em dart transforma em string e transforma objeto dart.
  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURL": photoURL,
      };
  String toJson() => jsonEncode(toMap());
}

import 'dart:convert';

class UserModel {
  late final String name;
  late final String? photoURL;

  UserModel({
    required this.name,
    this.photoURL,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        name: map['name'] as String,
        photoURL: map['photoURL'] as String?,
      );

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() => {
        'name': name,
        'photoURL': photoURL,
      };

  String toJson() => jsonEncode(toMap());
}

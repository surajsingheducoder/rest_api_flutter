// To parse this JSON data, do
//
//     final multipleUsersModel = multipleUsersModelFromJson(jsonString);

import 'dart:convert';

MultipleUsersModel multipleUsersModelFromJson(String str) => MultipleUsersModel.fromJson(json.decode(str));

String multipleUsersModelToJson(MultipleUsersModel data) => json.encode(data.toJson());

class MultipleUsersModel {
  List<User>? users;
  String? status;

  MultipleUsersModel({
    this.users,
    this.status,
  });

  factory MultipleUsersModel.fromJson(Map<String, dynamic> json) => MultipleUsersModel(
    users: json["users"] == null ? [] : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "users": users == null ? [] : List<dynamic>.from(users!.map((x) => x.toJson())),
    "status": status,
  };
}

class User {
  String? id;
  String? name;
  String? email;
  String? number;
  String? address;
  String? imageUrl;

  User({
    this.id,
    this.name,
    this.email,
    this.number,
    this.address,
    this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    number: json["number"],
    address: json["address"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "number": number,
    "address": address,
    "imageUrl": imageUrl,
  };
}

// To parse this JSON data, do
//
//     final usersSingle = usersSingleFromJson(jsonString);

import 'dart:convert';

UsersSingle usersSingleFromJson(String str) => UsersSingle.fromJson(json.decode(str));

String usersSingleToJson(UsersSingle data) => json.encode(data.toJson());

class UsersSingle {
  String? id;
  String? name;
  String? email;
  String? number;
  String? address;
  String? imageUrl;

  UsersSingle({
    this.id,
    this.name,
    this.email,
    this.number,
    this.address,
    this.imageUrl,
  });

  factory UsersSingle.fromJson(Map<String, dynamic> json) => UsersSingle(
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

// To parse this JSON data, do
//
//     final multipleUsersListModel = multipleUsersListModelFromJson(jsonString);

import 'dart:convert';

List<MultipleUsersListModel> multipleUsersListModelFromJson(String str) => List<MultipleUsersListModel>.from(json.decode(str).map((x) => MultipleUsersListModel.fromJson(x)));

String multipleUsersListModelToJson(List<MultipleUsersListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MultipleUsersListModel {
  String? id;
  String? name;
  String? email;
  String? number;
  String? address;
  String? imageUrl;

  MultipleUsersListModel({
    this.id,
    this.name,
    this.email,
    this.number,
    this.address,
    this.imageUrl,
  });

  factory MultipleUsersListModel.fromJson(Map<String, dynamic> json) => MultipleUsersListModel(
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

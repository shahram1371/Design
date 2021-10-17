// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.data,
  });

  Data data;

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.username,
    required this.mobile,
    required this.status,
    required this.statusMessage,
    required this.deviceType,
    required this.createdAt,
    required this.persianCreatedAt,
    required this.info,
  });

  int id;
  dynamic username;
  String mobile;
  bool status;
  String statusMessage;
  String deviceType;
  DateTime createdAt;
  DateTime persianCreatedAt;
  Info info;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        username: json["username"],
        mobile: json["mobile"],
        status: json["status"],
        statusMessage: json["status_message"],
        deviceType: json["device_type"],
        createdAt: DateTime.parse(json["created_at"]),
        persianCreatedAt: DateTime.parse(json["persian_created_at"]),
        info: Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "mobile": mobile,
        "status": status,
        "status_message": statusMessage,
        "device_type": deviceType,
        "created_at": createdAt.toIso8601String(),
        "persian_created_at": persianCreatedAt.toIso8601String(),
        "info": info.toJson(),
      };
}

class Info {
  Info({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.sex,
    required this.birthDate,
    required this.cityKey,
    required this.nationalCode,
    required this.identityNumber,
    required this.avatar,
    required this.createdAt,
    required this.updatedAt,
    required this.persianSex,
    required this.persianCity,
  });

  int id;
  int userId;
  String firstName;
  String lastName;
  int sex;
  dynamic birthDate;
  String cityKey;
  String nationalCode;
  String identityNumber;
  String avatar;
  DateTime createdAt;
  DateTime updatedAt;
  String persianSex;
  String persianCity;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        id: json["id"],
        userId: json["user_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        sex: json["sex"],
        birthDate: json["birth_date"],
        cityKey: json["city_key"],
        nationalCode: json["national_code"],
        identityNumber: json["identity_number"],
        avatar: json["avatar"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        persianSex: json["persian_sex"],
        persianCity: json["persian_city"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "first_name": firstName,
        "last_name": lastName,
        "sex": sex,
        "birth_date": birthDate,
        "city_key": cityKey,
        "national_code": nationalCode,
        "identity_number": identityNumber,
        "avatar": avatar,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "persian_sex": persianSex,
        "persian_city": persianCity,
      };
}

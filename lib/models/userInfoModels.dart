// To parse this JSON data, do
//
//     final getUserInfoModel = getUserInfoModelFromJson(jsonString);

import 'dart:convert';

GetUserInfoModel getUserInfoModelFromJson(String str) =>
    GetUserInfoModel.fromJson(json.decode(str));

String getUserInfoModelToJson(GetUserInfoModel data) =>
    json.encode(data.toJson());

class GetUserInfoModel {
  GetUserInfoModel({
    this.status,
    this.data,
  });

  bool? status;
  Data? data;

  factory GetUserInfoModel.fromJson(Map<String, dynamic> json) =>
      GetUserInfoModel(
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "data": data == null ? null : data!.toJson(),
      };
}

class Data {
  Data({
    this.user,
    this.portfolioValue,
  });

  List<User>? user;
  double? portfolioValue;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json["user"] == null
            ? null
            : List<User>.from(json["user"].map((x) => User.fromJson(x))),
        portfolioValue: json["portfolio_value"] == null
            ? null
            : json["portfolio_value"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "user": user == null
            ? null
            : List<dynamic>.from(user!.map((x) => x.toJson())),
        "portfolio_value": portfolioValue == null ? null : portfolioValue,
      };
}

class User {
  User({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.phoneConfirmed,
    this.isActive,
    this.gender,
    this.accessToken,
    this.referredByCode,
    this.referralCode,
    this.cashoutMethod,
    this.cashoutValue,
  });

  int? id;
  String? name;
  String? phone;
  String? email;
  int? phoneConfirmed;
  int? isActive;
  String? gender;
  String? accessToken;
  String? referredByCode;
  String? referralCode;
  String? cashoutMethod;
  dynamic cashoutValue;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        phone: json["phone"] == null ? null : json["phone"],
        email: json["email"] == null ? null : json["email"],
        phoneConfirmed:
            json["phone_confirmed"] == null ? null : json["phone_confirmed"],
        isActive: json["is_active"] == null ? null : json["is_active"],
        gender: json["gender"] == null ? null : json["gender"],
        accessToken: json["access_token"] == null ? null : json["access_token"],
        referredByCode:
            json["referred_by_code"] == null ? null : json["referred_by_code"],
        referralCode:
            json["referral_code"] == null ? null : json["referral_code"],
        cashoutMethod:
            json["cashout_method"] == null ? null : json["cashout_method"],
        cashoutValue: json["cashout_value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "phone": phone == null ? null : phone,
        "email": email == null ? null : email,
        "phone_confirmed": phoneConfirmed == null ? null : phoneConfirmed,
        "is_active": isActive == null ? null : isActive,
        "gender": gender == null ? null : gender,
        "access_token": accessToken == null ? null : accessToken,
        "referred_by_code": referredByCode == null ? null : referredByCode,
        "referral_code": referralCode == null ? null : referralCode,
        "cashout_method": cashoutMethod == null ? null : cashoutMethod,
        "cashout_value": cashoutValue,
      };
}

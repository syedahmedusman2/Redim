// To parse this JSON data, do
//
//     final topBrandsModel = topBrandsModelFromJson(jsonString);

import 'dart:convert';

TopBrandsModel topBrandsModelFromJson(String str) =>
    TopBrandsModel.fromJson(json.decode(str));

String topBrandsModelToJson(TopBrandsModel data) => json.encode(data.toJson());

class TopBrandsModel {
  TopBrandsModel({
    this.status,
    this.data,
  });

  bool? status;
  Data? data;

  factory TopBrandsModel.fromJson(Map<String, dynamic> json) => TopBrandsModel(
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
    this.stores,
  });

  List<Store>? stores;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        stores: json["stores"] == null
            ? null
            : List<Store>.from(json["stores"].map((x) => Store.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "stores": stores == null
            ? null
            : List<dynamic>.from(stores!.map((x) => x.toJson())),
      };
}

class Store {
  Store({
    this.id,
    this.nameEn,
    this.nameBn,
    this.slug,
    this.url,
    this.descriptionEn,
    this.descriptionBn,
    this.logo,
    this.rating,
    this.maxCashback,
    this.percentNow,
    this.percentOld,
    this.notifiedIn,
    this.cashbackIn,
    this.isActive,
    this.priority,
    this.isTop,
    this.categoryId,
    this.name,
    this.description,
  });

  int? id;
  String? nameEn;
  dynamic? nameBn;
  String? slug;
  String? url;
  String? descriptionEn;
  dynamic descriptionBn;
  String? logo;
  int? rating;
  String? maxCashback;
  String? percentNow;
  String? percentOld;
  DateTime? notifiedIn;
  String? cashbackIn;
  int? isActive;
  int? priority;
  int? isTop;
  int? categoryId;
  String? name;
  String? description;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        id: json["id"] == null ? null : json["id"],
        nameEn: json["name_en"] == null ? null : json["name_en"],
        nameBn: json["name_bn"],
        slug: json["slug"] == null ? null : json["slug"],
        url: json["url"] == null ? null : json["url"],
        descriptionEn:
            json["description_en"] == null ? null : json["description_en"],
        descriptionBn: json["description_bn"],
        logo: json["logo"] == null ? null : json["logo"],
        rating: json["rating"] == null ? null : json["rating"],
        maxCashback: json["max_cashback"] == null ? null : json["max_cashback"],
        percentNow: json["percent_now"] == null ? null : json["percent_now"],
        percentOld: json["percent_old"] == null ? null : json["percent_old"],
        notifiedIn: json["notified_in"] == null
            ? null
            : DateTime.parse(json["notified_in"]),
        cashbackIn: json["cashback_in"] == null ? null : json["cashback_in"],
        isActive: json["is_active"] == null ? null : json["is_active"],
        priority: json["priority"] == null ? null : json["priority"],
        isTop: json["is_top"] == null ? null : json["is_top"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name_en": nameEn == null ? null : nameEn,
        "name_bn": nameBn,
        "slug": slug == null ? null : slug,
        "url": url == null ? null : url,
        "description_en": descriptionEn == null ? null : descriptionEn,
        "description_bn": descriptionBn,
        "logo": logo == null ? null : logo,
        "rating": rating == null ? null : rating,
        "max_cashback": maxCashback == null ? null : maxCashback,
        "percent_now": percentNow == null ? null : percentNow,
        "percent_old": percentOld == null ? null : percentOld,
        "notified_in":
            notifiedIn == null ? null : notifiedIn!.toIso8601String(),
        "cashback_in": cashbackIn == null ? null : cashbackIn,
        "is_active": isActive == null ? null : isActive,
        "priority": priority == null ? null : priority,
        "is_top": isTop == null ? null : isTop,
        "category_id": categoryId == null ? null : categoryId,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
      };
}

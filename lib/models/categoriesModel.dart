// To parse this JSON data, do
//
//     final categoriesModel = categoriesModelFromJson(jsonString);

import 'dart:convert';

CategoriesModel categoriesModelFromJson(String str) =>
    CategoriesModel.fromJson(json.decode(str));

String categoriesModelToJson(CategoriesModel data) =>
    json.encode(data.toJson());

class CategoriesModel {
  CategoriesModel({
    this.status,
    this.data,
  });

  bool? status;
  Data? data;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
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
    this.categories,
  });

  List<Category>? categories;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        categories: json["categories"] == null
            ? null
            : List<Category>.from(
                json["categories"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    this.id,
    this.nameEn,
    this.nameBn,
    this.slug,
    this.icon,
    this.color,
    this.isTop,
    this.isActive,
    this.priority,
    this.name,
  });

  int? id;
  String? nameEn;
  String? nameBn;
  String? slug;
  String? icon;
  String? color;
  int? isTop;
  int? isActive;
  int? priority;
  String? name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] == null ? null : json["id"],
        nameEn: json["name_en"] == null ? null : json["name_en"],
        nameBn: json["name_bn"] == null ? null : json["name_bn"],
        slug: json["slug"] == null ? null : json["slug"],
        icon: json["icon"] == null ? null : json["icon"],
        color: json["color"] == null ? null : json["color"],
        isTop: json["is_top"] == null ? null : json["is_top"],
        isActive: json["is_active"] == null ? null : json["is_active"],
        priority: json["priority"] == null ? null : json["priority"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name_en": nameEn == null ? null : nameEn,
        "name_bn": nameBn == null ? null : nameBn,
        "slug": slug == null ? null : slug,
        "icon": icon == null ? null : icon,
        "color": color == null ? null : color,
        "is_top": isTop == null ? null : isTop,
        "is_active": isActive == null ? null : isActive,
        "priority": priority == null ? null : priority,
        "name": name == null ? null : name,
      };
}

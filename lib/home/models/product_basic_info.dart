// To parse this JSON data, do
//
//     final productBasicInfo = productBasicInfoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class ProductBasicInfo {
  const ProductBasicInfo({
    required this.name,
    required this.shortInfo,
    required this.imageUrl,
    required this.price,
    required this.availablePieces,
    required this.popularity,
    required this.artistName,
  });

  final String name;
  final String shortInfo;
  final String imageUrl;
  final String price;
  final int availablePieces;
  final int popularity;
  final String artistName;

  ProductBasicInfo copyWith({
    String? name,
    String? shortInfo,
    String? imageUrl,
    String? price,
    int? availablePieces,
    int? popularity,
    String? artistName,
  }) =>
      ProductBasicInfo(
        name: name ?? this.name,
        shortInfo: shortInfo ?? this.shortInfo,
        imageUrl: imageUrl ?? this.imageUrl,
        price: price ?? this.price,
        availablePieces: availablePieces ?? this.availablePieces,
        popularity: popularity ?? this.popularity,
        artistName: artistName ?? this.artistName,
      );

  factory ProductBasicInfo.fromRawJson(String str) =>
      ProductBasicInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductBasicInfo.fromJson(Map<String, dynamic> json) =>
      ProductBasicInfo(
        name: json["name"],
        shortInfo: json["shortInfo"],
        imageUrl: json["imageUrl"],
        price: json["price"],
        availablePieces: json["availablePieces"],
        popularity: json["popularity"],
        artistName: json["artistName"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "shortInfo": shortInfo,
        "imageUrl": imageUrl,
        "price": price,
        "availablePieces": availablePieces,
        "popularity": popularity,
        "artistName": artistName,
      };
}

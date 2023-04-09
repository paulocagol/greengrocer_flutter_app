import 'dart:convert';

class ItemModel {
  String itemName;
  String imageUrl;
  String unit;
  double price;
  String description;

  ItemModel(
    this.itemName,
    this.imageUrl,
    this.unit,
    this.price,
    this.description,
  );

  ItemModel copyWith({
    String? itemName,
    String? imageUrl,
    String? unit,
    double? price,
    String? description,
  }) {
    return ItemModel(
      itemName ?? this.itemName,
      imageUrl ?? this.imageUrl,
      unit ?? this.unit,
      price ?? this.price,
      description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'itemName': itemName});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'unit': unit});
    result.addAll({'price': price});
    result.addAll({'description': description});

    return result;
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      map['itemName'] ?? '',
      map['imageUrl'] ?? '',
      map['unit'] ?? '',
      map['price']?.toDouble() ?? 0.0,
      map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemModel(itemName: $itemName, imageUrl: $imageUrl, unit: $unit, price: $price, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemModel &&
        other.itemName == itemName &&
        other.imageUrl == imageUrl &&
        other.unit == unit &&
        other.price == price &&
        other.description == description;
  }

  @override
  int get hashCode {
    return itemName.hashCode ^
        imageUrl.hashCode ^
        unit.hashCode ^
        price.hashCode ^
        description.hashCode;
  }
}

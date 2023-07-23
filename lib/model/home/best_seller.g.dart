// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BestSeller _$$_BestSellerFromJson(Map<String, dynamic> json) =>
    _$_BestSeller(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      discountBeforePrice: json['discount_before_price'] as int?,
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
      sold: json['sold'] as int?,
      rating: json['rating'] as int?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_BestSellerToJson(_$_BestSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'discount_before_price': instance.discountBeforePrice,
      'discount_percentage': instance.discountPercentage,
      'sold': instance.sold,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
    };

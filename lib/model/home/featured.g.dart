// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Featured _$$_FeaturedFromJson(Map<String, dynamic> json) => _$_Featured(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      discountBeforePrice: json['discount_before_price'] as int?,
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
      sold: json['sold'] as int?,
      rating: json['rating'] as int?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_FeaturedToJson(_$_Featured instance) =>
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

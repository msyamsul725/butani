// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      discountBeforePrice: json['discount_before_price'] as int?,
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
      sold: json['sold'] as int?,
      rating: json['rating'] as int?,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      minimumOrder: json['minimum_order'] as int?,
      reviewTotal: json['review_total'] as int?,
      discussionTotal: json['discussion_total'] as int?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'discount_before_price': instance.discountBeforePrice,
      'discount_percentage': instance.discountPercentage,
      'sold': instance.sold,
      'rating': instance.rating,
      'photos': instance.photos,
      'description': instance.description,
      'minimum_order': instance.minimumOrder,
      'review_total': instance.reviewTotal,
      'discussion_total': instance.discussionTotal,
      'variants': instance.variants,
    };

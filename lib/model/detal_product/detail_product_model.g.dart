// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailProductModel _$$_DetailProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailProductModel(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailProductModelToJson(
        _$_DetailProductModel instance) =>
    <String, dynamic>{
      'product': instance.product,
    };

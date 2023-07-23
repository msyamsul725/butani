// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diskusi_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiskusiProductModel _$$_DiskusiProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_DiskusiProductModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DiskusiProductModelToJson(
        _$_DiskusiProductModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

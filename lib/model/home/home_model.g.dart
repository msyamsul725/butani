// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$$_HomeModelFromJson(Map<String, dynamic> json) => _$_HomeModel(
      bestSeller: (json['best_seller'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      latest: (json['latest'] as List<dynamic>?)
          ?.map((e) => Latest.fromJson(e as Map<String, dynamic>))
          .toList(),
      featured: (json['featured'] as List<dynamic>?)
          ?.map((e) => Featured.fromJson(e as Map<String, dynamic>))
          .toList(),
      flashsale: (json['flashsale'] as List<dynamic>?)
          ?.map((e) => Flashsale.fromJson(e as Map<String, dynamic>))
          .toList(),
      other: (json['other'] as List<dynamic>?)
          ?.map((e) => Other.fromJson(e as Map<String, dynamic>))
          .toList(),
      exclusiveDistributor: (json['exclusiveDistributor'] as List<dynamic>?)
          ?.map((e) => ExclusiveDistributor.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorizeDealer: (json['authorizeDealer'] as List<dynamic>?)
          ?.map((e) => AuthorizeDealer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'best_seller': instance.bestSeller,
      'latest': instance.latest,
      'featured': instance.featured,
      'flashsale': instance.flashsale,
      'other': instance.other,
      'exclusiveDistributor': instance.exclusiveDistributor,
      'authorizeDealer': instance.authorizeDealer,
    };

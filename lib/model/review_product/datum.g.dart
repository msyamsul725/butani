// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as int?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      content: json['content'] as String?,
      photo: json['photo'] as String?,
      rating: json['rating'] as int?,
      time: json['time'] as String?,
      timeHuman: json['time_human'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'content': instance.content,
      'photo': instance.photo,
      'rating': instance.rating,
      'time': instance.time,
      'time_human': instance.timeHuman,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String?,
      answersTotal: json['answers_total'] as int?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: json['time'] as String?,
      timeHuman: json['time_human'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'content': instance.content,
      'answers_total': instance.answersTotal,
      'answers': instance.answers,
      'time': instance.time,
      'time_human': instance.timeHuman,
    };

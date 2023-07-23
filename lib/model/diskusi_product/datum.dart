import 'package:freezed_annotation/freezed_annotation.dart';

import 'answer.dart';
import 'user.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    int? id,
    User? user,
    String? content,
    @JsonKey(name: 'answers_total') int? answersTotal,
    List<Answer>? answers,
    String? time,
    @JsonKey(name: 'time_human') String? timeHuman,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

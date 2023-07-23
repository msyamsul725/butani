import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  factory Answer({
    int? id,
    User? user,
    String? content,
    String? time,
    @JsonKey(name: 'time_human') String? timeHuman,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

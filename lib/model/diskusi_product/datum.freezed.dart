// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers_total')
  int? get answersTotal => throw _privateConstructorUsedError;
  List<Answer>? get answers => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_human')
  String? get timeHuman => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {int? id,
      User? user,
      String? content,
      @JsonKey(name: 'answers_total') int? answersTotal,
      List<Answer>? answers,
      String? time,
      @JsonKey(name: 'time_human') String? timeHuman});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? content = freezed,
    Object? answersTotal = freezed,
    Object? answers = freezed,
    Object? time = freezed,
    Object? timeHuman = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      answersTotal: freezed == answersTotal
          ? _value.answersTotal
          : answersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      timeHuman: freezed == timeHuman
          ? _value.timeHuman
          : timeHuman // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      User? user,
      String? content,
      @JsonKey(name: 'answers_total') int? answersTotal,
      List<Answer>? answers,
      String? time,
      @JsonKey(name: 'time_human') String? timeHuman});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? content = freezed,
    Object? answersTotal = freezed,
    Object? answers = freezed,
    Object? time = freezed,
    Object? timeHuman = freezed,
  }) {
    return _then(_$_Datum(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      answersTotal: freezed == answersTotal
          ? _value.answersTotal
          : answersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      timeHuman: freezed == timeHuman
          ? _value.timeHuman
          : timeHuman // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  _$_Datum(
      {this.id,
      this.user,
      this.content,
      @JsonKey(name: 'answers_total') this.answersTotal,
      final List<Answer>? answers,
      this.time,
      @JsonKey(name: 'time_human') this.timeHuman})
      : _answers = answers;

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final User? user;
  @override
  final String? content;
  @override
  @JsonKey(name: 'answers_total')
  final int? answersTotal;
  final List<Answer>? _answers;
  @override
  List<Answer>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? time;
  @override
  @JsonKey(name: 'time_human')
  final String? timeHuman;

  @override
  String toString() {
    return 'Datum(id: $id, user: $user, content: $content, answersTotal: $answersTotal, answers: $answers, time: $time, timeHuman: $timeHuman)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answersTotal, answersTotal) ||
                other.answersTotal == answersTotal) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timeHuman, timeHuman) ||
                other.timeHuman == timeHuman));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, content, answersTotal,
      const DeepCollectionEquality().hash(_answers), time, timeHuman);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  factory _Datum(
      {final int? id,
      final User? user,
      final String? content,
      @JsonKey(name: 'answers_total') final int? answersTotal,
      final List<Answer>? answers,
      final String? time,
      @JsonKey(name: 'time_human') final String? timeHuman}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id;
  @override
  User? get user;
  @override
  String? get content;
  @override
  @JsonKey(name: 'answers_total')
  int? get answersTotal;
  @override
  List<Answer>? get answers;
  @override
  String? get time;
  @override
  @JsonKey(name: 'time_human')
  String? get timeHuman;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

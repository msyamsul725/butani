// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorize_dealer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorizeDealer _$AuthorizeDealerFromJson(Map<String, dynamic> json) {
  return _AuthorizeDealer.fromJson(json);
}

/// @nodoc
mixin _$AuthorizeDealer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizeDealerCopyWith<AuthorizeDealer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizeDealerCopyWith<$Res> {
  factory $AuthorizeDealerCopyWith(
          AuthorizeDealer value, $Res Function(AuthorizeDealer) then) =
      _$AuthorizeDealerCopyWithImpl<$Res, AuthorizeDealer>;
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class _$AuthorizeDealerCopyWithImpl<$Res, $Val extends AuthorizeDealer>
    implements $AuthorizeDealerCopyWith<$Res> {
  _$AuthorizeDealerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizeDealerCopyWith<$Res>
    implements $AuthorizeDealerCopyWith<$Res> {
  factory _$$_AuthorizeDealerCopyWith(
          _$_AuthorizeDealer value, $Res Function(_$_AuthorizeDealer) then) =
      __$$_AuthorizeDealerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class __$$_AuthorizeDealerCopyWithImpl<$Res>
    extends _$AuthorizeDealerCopyWithImpl<$Res, _$_AuthorizeDealer>
    implements _$$_AuthorizeDealerCopyWith<$Res> {
  __$$_AuthorizeDealerCopyWithImpl(
      _$_AuthorizeDealer _value, $Res Function(_$_AuthorizeDealer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_AuthorizeDealer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorizeDealer implements _AuthorizeDealer {
  _$_AuthorizeDealer({this.id, this.name, this.logo});

  factory _$_AuthorizeDealer.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorizeDealerFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;

  @override
  String toString() {
    return 'AuthorizeDealer(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizeDealer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizeDealerCopyWith<_$_AuthorizeDealer> get copyWith =>
      __$$_AuthorizeDealerCopyWithImpl<_$_AuthorizeDealer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorizeDealerToJson(
      this,
    );
  }
}

abstract class _AuthorizeDealer implements AuthorizeDealer {
  factory _AuthorizeDealer(
      {final int? id,
      final String? name,
      final String? logo}) = _$_AuthorizeDealer;

  factory _AuthorizeDealer.fromJson(Map<String, dynamic> json) =
      _$_AuthorizeDealer.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizeDealerCopyWith<_$_AuthorizeDealer> get copyWith =>
      throw _privateConstructorUsedError;
}

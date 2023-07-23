// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewProductModel _$ReviewProductModelFromJson(Map<String, dynamic> json) {
  return _ReviewProductModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewProductModel {
  List<Datum>? get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewProductModelCopyWith<ReviewProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewProductModelCopyWith<$Res> {
  factory $ReviewProductModelCopyWith(
          ReviewProductModel value, $Res Function(ReviewProductModel) then) =
      _$ReviewProductModelCopyWithImpl<$Res, ReviewProductModel>;
  @useResult
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ReviewProductModelCopyWithImpl<$Res, $Val extends ReviewProductModel>
    implements $ReviewProductModelCopyWith<$Res> {
  _$ReviewProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewProductModelCopyWith<$Res>
    implements $ReviewProductModelCopyWith<$Res> {
  factory _$$_ReviewProductModelCopyWith(_$_ReviewProductModel value,
          $Res Function(_$_ReviewProductModel) then) =
      __$$_ReviewProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ReviewProductModelCopyWithImpl<$Res>
    extends _$ReviewProductModelCopyWithImpl<$Res, _$_ReviewProductModel>
    implements _$$_ReviewProductModelCopyWith<$Res> {
  __$$_ReviewProductModelCopyWithImpl(
      _$_ReviewProductModel _value, $Res Function(_$_ReviewProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_ReviewProductModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewProductModel implements _ReviewProductModel {
  _$_ReviewProductModel({final List<Datum>? data, this.links, this.meta})
      : _data = data;

  factory _$_ReviewProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewProductModelFromJson(json);

  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Links? links;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'ReviewProductModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewProductModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewProductModelCopyWith<_$_ReviewProductModel> get copyWith =>
      __$$_ReviewProductModelCopyWithImpl<_$_ReviewProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewProductModelToJson(
      this,
    );
  }
}

abstract class _ReviewProductModel implements ReviewProductModel {
  factory _ReviewProductModel(
      {final List<Datum>? data,
      final Links? links,
      final Meta? meta}) = _$_ReviewProductModel;

  factory _ReviewProductModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewProductModel.fromJson;

  @override
  List<Datum>? get data;
  @override
  Links? get links;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewProductModelCopyWith<_$_ReviewProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Latest _$LatestFromJson(Map<String, dynamic> json) {
  return _Latest.fromJson(json);
}

/// @nodoc
mixin _$Latest {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_before_price')
  int? get discountBeforePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;
  int? get sold => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestCopyWith<Latest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestCopyWith<$Res> {
  factory $LatestCopyWith(Latest value, $Res Function(Latest) then) =
      _$LatestCopyWithImpl<$Res, Latest>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
      int? sold,
      int? rating,
      String? thumbnail});
}

/// @nodoc
class _$LatestCopyWithImpl<$Res, $Val extends Latest>
    implements $LatestCopyWith<$Res> {
  _$LatestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? discountBeforePrice = freezed,
    Object? discountPercentage = freezed,
    Object? sold = freezed,
    Object? rating = freezed,
    Object? thumbnail = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountBeforePrice: freezed == discountBeforePrice
          ? _value.discountBeforePrice
          : discountBeforePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LatestCopyWith<$Res> implements $LatestCopyWith<$Res> {
  factory _$$_LatestCopyWith(_$_Latest value, $Res Function(_$_Latest) then) =
      __$$_LatestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
      int? sold,
      int? rating,
      String? thumbnail});
}

/// @nodoc
class __$$_LatestCopyWithImpl<$Res>
    extends _$LatestCopyWithImpl<$Res, _$_Latest>
    implements _$$_LatestCopyWith<$Res> {
  __$$_LatestCopyWithImpl(_$_Latest _value, $Res Function(_$_Latest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? discountBeforePrice = freezed,
    Object? discountPercentage = freezed,
    Object? sold = freezed,
    Object? rating = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_Latest(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountBeforePrice: freezed == discountBeforePrice
          ? _value.discountBeforePrice
          : discountBeforePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Latest implements _Latest {
  _$_Latest(
      {this.id,
      this.name,
      this.price,
      @JsonKey(name: 'discount_before_price') this.discountBeforePrice,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      this.sold,
      this.rating,
      this.thumbnail});

  factory _$_Latest.fromJson(Map<String, dynamic> json) =>
      _$$_LatestFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  @JsonKey(name: 'discount_before_price')
  final int? discountBeforePrice;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;
  @override
  final int? sold;
  @override
  final int? rating;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'Latest(id: $id, name: $name, price: $price, discountBeforePrice: $discountBeforePrice, discountPercentage: $discountPercentage, sold: $sold, rating: $rating, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Latest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountBeforePrice, discountBeforePrice) ||
                other.discountBeforePrice == discountBeforePrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price,
      discountBeforePrice, discountPercentage, sold, rating, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LatestCopyWith<_$_Latest> get copyWith =>
      __$$_LatestCopyWithImpl<_$_Latest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatestToJson(
      this,
    );
  }
}

abstract class _Latest implements Latest {
  factory _Latest(
      {final int? id,
      final String? name,
      final int? price,
      @JsonKey(name: 'discount_before_price') final int? discountBeforePrice,
      @JsonKey(name: 'discount_percentage') final double? discountPercentage,
      final int? sold,
      final int? rating,
      final String? thumbnail}) = _$_Latest;

  factory _Latest.fromJson(Map<String, dynamic> json) = _$_Latest.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  @JsonKey(name: 'discount_before_price')
  int? get discountBeforePrice;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;
  @override
  int? get sold;
  @override
  int? get rating;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_LatestCopyWith<_$_Latest> get copyWith =>
      throw _privateConstructorUsedError;
}

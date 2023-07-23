// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: 'best_seller')
  List<BestSeller>? get bestSeller => throw _privateConstructorUsedError;
  List<Latest>? get latest => throw _privateConstructorUsedError;
  List<Featured>? get featured => throw _privateConstructorUsedError;
  List<Flashsale>? get flashsale => throw _privateConstructorUsedError;
  List<Other>? get other => throw _privateConstructorUsedError;
  List<ExclusiveDistributor>? get exclusiveDistributor =>
      throw _privateConstructorUsedError;
  List<AuthorizeDealer>? get authorizeDealer =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'best_seller') List<BestSeller>? bestSeller,
      List<Latest>? latest,
      List<Featured>? featured,
      List<Flashsale>? flashsale,
      List<Other>? other,
      List<ExclusiveDistributor>? exclusiveDistributor,
      List<AuthorizeDealer>? authorizeDealer});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestSeller = freezed,
    Object? latest = freezed,
    Object? featured = freezed,
    Object? flashsale = freezed,
    Object? other = freezed,
    Object? exclusiveDistributor = freezed,
    Object? authorizeDealer = freezed,
  }) {
    return _then(_value.copyWith(
      bestSeller: freezed == bestSeller
          ? _value.bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<BestSeller>?,
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as List<Latest>?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as List<Featured>?,
      flashsale: freezed == flashsale
          ? _value.flashsale
          : flashsale // ignore: cast_nullable_to_non_nullable
              as List<Flashsale>?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Other>?,
      exclusiveDistributor: freezed == exclusiveDistributor
          ? _value.exclusiveDistributor
          : exclusiveDistributor // ignore: cast_nullable_to_non_nullable
              as List<ExclusiveDistributor>?,
      authorizeDealer: freezed == authorizeDealer
          ? _value.authorizeDealer
          : authorizeDealer // ignore: cast_nullable_to_non_nullable
              as List<AuthorizeDealer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'best_seller') List<BestSeller>? bestSeller,
      List<Latest>? latest,
      List<Featured>? featured,
      List<Flashsale>? flashsale,
      List<Other>? other,
      List<ExclusiveDistributor>? exclusiveDistributor,
      List<AuthorizeDealer>? authorizeDealer});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$_HomeModel>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestSeller = freezed,
    Object? latest = freezed,
    Object? featured = freezed,
    Object? flashsale = freezed,
    Object? other = freezed,
    Object? exclusiveDistributor = freezed,
    Object? authorizeDealer = freezed,
  }) {
    return _then(_$_HomeModel(
      bestSeller: freezed == bestSeller
          ? _value._bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<BestSeller>?,
      latest: freezed == latest
          ? _value._latest
          : latest // ignore: cast_nullable_to_non_nullable
              as List<Latest>?,
      featured: freezed == featured
          ? _value._featured
          : featured // ignore: cast_nullable_to_non_nullable
              as List<Featured>?,
      flashsale: freezed == flashsale
          ? _value._flashsale
          : flashsale // ignore: cast_nullable_to_non_nullable
              as List<Flashsale>?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Other>?,
      exclusiveDistributor: freezed == exclusiveDistributor
          ? _value._exclusiveDistributor
          : exclusiveDistributor // ignore: cast_nullable_to_non_nullable
              as List<ExclusiveDistributor>?,
      authorizeDealer: freezed == authorizeDealer
          ? _value._authorizeDealer
          : authorizeDealer // ignore: cast_nullable_to_non_nullable
              as List<AuthorizeDealer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeModel implements _HomeModel {
  _$_HomeModel(
      {@JsonKey(name: 'best_seller') final List<BestSeller>? bestSeller,
      final List<Latest>? latest,
      final List<Featured>? featured,
      final List<Flashsale>? flashsale,
      final List<Other>? other,
      final List<ExclusiveDistributor>? exclusiveDistributor,
      final List<AuthorizeDealer>? authorizeDealer})
      : _bestSeller = bestSeller,
        _latest = latest,
        _featured = featured,
        _flashsale = flashsale,
        _other = other,
        _exclusiveDistributor = exclusiveDistributor,
        _authorizeDealer = authorizeDealer;

  factory _$_HomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeModelFromJson(json);

  final List<BestSeller>? _bestSeller;
  @override
  @JsonKey(name: 'best_seller')
  List<BestSeller>? get bestSeller {
    final value = _bestSeller;
    if (value == null) return null;
    if (_bestSeller is EqualUnmodifiableListView) return _bestSeller;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Latest>? _latest;
  @override
  List<Latest>? get latest {
    final value = _latest;
    if (value == null) return null;
    if (_latest is EqualUnmodifiableListView) return _latest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Featured>? _featured;
  @override
  List<Featured>? get featured {
    final value = _featured;
    if (value == null) return null;
    if (_featured is EqualUnmodifiableListView) return _featured;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Flashsale>? _flashsale;
  @override
  List<Flashsale>? get flashsale {
    final value = _flashsale;
    if (value == null) return null;
    if (_flashsale is EqualUnmodifiableListView) return _flashsale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Other>? _other;
  @override
  List<Other>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExclusiveDistributor>? _exclusiveDistributor;
  @override
  List<ExclusiveDistributor>? get exclusiveDistributor {
    final value = _exclusiveDistributor;
    if (value == null) return null;
    if (_exclusiveDistributor is EqualUnmodifiableListView)
      return _exclusiveDistributor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AuthorizeDealer>? _authorizeDealer;
  @override
  List<AuthorizeDealer>? get authorizeDealer {
    final value = _authorizeDealer;
    if (value == null) return null;
    if (_authorizeDealer is EqualUnmodifiableListView) return _authorizeDealer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeModel(bestSeller: $bestSeller, latest: $latest, featured: $featured, flashsale: $flashsale, other: $other, exclusiveDistributor: $exclusiveDistributor, authorizeDealer: $authorizeDealer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            const DeepCollectionEquality()
                .equals(other._bestSeller, _bestSeller) &&
            const DeepCollectionEquality().equals(other._latest, _latest) &&
            const DeepCollectionEquality().equals(other._featured, _featured) &&
            const DeepCollectionEquality()
                .equals(other._flashsale, _flashsale) &&
            const DeepCollectionEquality().equals(other._other, this._other) &&
            const DeepCollectionEquality()
                .equals(other._exclusiveDistributor, _exclusiveDistributor) &&
            const DeepCollectionEquality()
                .equals(other._authorizeDealer, _authorizeDealer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bestSeller),
      const DeepCollectionEquality().hash(_latest),
      const DeepCollectionEquality().hash(_featured),
      const DeepCollectionEquality().hash(_flashsale),
      const DeepCollectionEquality().hash(_other),
      const DeepCollectionEquality().hash(_exclusiveDistributor),
      const DeepCollectionEquality().hash(_authorizeDealer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeModelToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  factory _HomeModel(
      {@JsonKey(name: 'best_seller') final List<BestSeller>? bestSeller,
      final List<Latest>? latest,
      final List<Featured>? featured,
      final List<Flashsale>? flashsale,
      final List<Other>? other,
      final List<ExclusiveDistributor>? exclusiveDistributor,
      final List<AuthorizeDealer>? authorizeDealer}) = _$_HomeModel;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$_HomeModel.fromJson;

  @override
  @JsonKey(name: 'best_seller')
  List<BestSeller>? get bestSeller;
  @override
  List<Latest>? get latest;
  @override
  List<Featured>? get featured;
  @override
  List<Flashsale>? get flashsale;
  @override
  List<Other>? get other;
  @override
  List<ExclusiveDistributor>? get exclusiveDistributor;
  @override
  List<AuthorizeDealer>? get authorizeDealer;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

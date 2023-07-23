// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailProductModel _$DetailProductModelFromJson(Map<String, dynamic> json) {
  return _DetailProductModel.fromJson(json);
}

/// @nodoc
mixin _$DetailProductModel {
  Product? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailProductModelCopyWith<DetailProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductModelCopyWith<$Res> {
  factory $DetailProductModelCopyWith(
          DetailProductModel value, $Res Function(DetailProductModel) then) =
      _$DetailProductModelCopyWithImpl<$Res, DetailProductModel>;
  @useResult
  $Res call({Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$DetailProductModelCopyWithImpl<$Res, $Val extends DetailProductModel>
    implements $DetailProductModelCopyWith<$Res> {
  _$DetailProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailProductModelCopyWith<$Res>
    implements $DetailProductModelCopyWith<$Res> {
  factory _$$_DetailProductModelCopyWith(_$_DetailProductModel value,
          $Res Function(_$_DetailProductModel) then) =
      __$$_DetailProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_DetailProductModelCopyWithImpl<$Res>
    extends _$DetailProductModelCopyWithImpl<$Res, _$_DetailProductModel>
    implements _$$_DetailProductModelCopyWith<$Res> {
  __$$_DetailProductModelCopyWithImpl(
      _$_DetailProductModel _value, $Res Function(_$_DetailProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_DetailProductModel(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailProductModel implements _DetailProductModel {
  _$_DetailProductModel({this.product});

  factory _$_DetailProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailProductModelFromJson(json);

  @override
  final Product? product;

  @override
  String toString() {
    return 'DetailProductModel(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailProductModel &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailProductModelCopyWith<_$_DetailProductModel> get copyWith =>
      __$$_DetailProductModelCopyWithImpl<_$_DetailProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailProductModelToJson(
      this,
    );
  }
}

abstract class _DetailProductModel implements DetailProductModel {
  factory _DetailProductModel({final Product? product}) = _$_DetailProductModel;

  factory _DetailProductModel.fromJson(Map<String, dynamic> json) =
      _$_DetailProductModel.fromJson;

  @override
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$_DetailProductModelCopyWith<_$_DetailProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

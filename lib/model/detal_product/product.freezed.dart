// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_before_price')
  int? get discountBeforePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;
  int? get sold => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order')
  int? get minimumOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_total')
  int? get reviewTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discussion_total')
  int? get discussionTotal => throw _privateConstructorUsedError;
  List<Variant>? get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
      int? sold,
      int? rating,
      List<String>? photos,
      String? description,
      @JsonKey(name: 'minimum_order') int? minimumOrder,
      @JsonKey(name: 'review_total') int? reviewTotal,
      @JsonKey(name: 'discussion_total') int? discussionTotal,
      List<Variant>? variants});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
    Object? photos = freezed,
    Object? description = freezed,
    Object? minimumOrder = freezed,
    Object? reviewTotal = freezed,
    Object? discussionTotal = freezed,
    Object? variants = freezed,
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
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrder: freezed == minimumOrder
          ? _value.minimumOrder
          : minimumOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewTotal: freezed == reviewTotal
          ? _value.reviewTotal
          : reviewTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discussionTotal: freezed == discussionTotal
          ? _value.discussionTotal
          : discussionTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
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
      List<String>? photos,
      String? description,
      @JsonKey(name: 'minimum_order') int? minimumOrder,
      @JsonKey(name: 'review_total') int? reviewTotal,
      @JsonKey(name: 'discussion_total') int? discussionTotal,
      List<Variant>? variants});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
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
    Object? photos = freezed,
    Object? description = freezed,
    Object? minimumOrder = freezed,
    Object? reviewTotal = freezed,
    Object? discussionTotal = freezed,
    Object? variants = freezed,
  }) {
    return _then(_$_Product(
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
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrder: freezed == minimumOrder
          ? _value.minimumOrder
          : minimumOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewTotal: freezed == reviewTotal
          ? _value.reviewTotal
          : reviewTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discussionTotal: freezed == discussionTotal
          ? _value.discussionTotal
          : discussionTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  _$_Product(
      {this.id,
      this.name,
      this.price,
      @JsonKey(name: 'discount_before_price') this.discountBeforePrice,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      this.sold,
      this.rating,
      final List<String>? photos,
      this.description,
      @JsonKey(name: 'minimum_order') this.minimumOrder,
      @JsonKey(name: 'review_total') this.reviewTotal,
      @JsonKey(name: 'discussion_total') this.discussionTotal,
      final List<Variant>? variants})
      : _photos = photos,
        _variants = variants;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

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
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  @JsonKey(name: 'minimum_order')
  final int? minimumOrder;
  @override
  @JsonKey(name: 'review_total')
  final int? reviewTotal;
  @override
  @JsonKey(name: 'discussion_total')
  final int? discussionTotal;
  final List<Variant>? _variants;
  @override
  List<Variant>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, discountBeforePrice: $discountBeforePrice, discountPercentage: $discountPercentage, sold: $sold, rating: $rating, photos: $photos, description: $description, minimumOrder: $minimumOrder, reviewTotal: $reviewTotal, discussionTotal: $discussionTotal, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountBeforePrice, discountBeforePrice) ||
                other.discountBeforePrice == discountBeforePrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.minimumOrder, minimumOrder) ||
                other.minimumOrder == minimumOrder) &&
            (identical(other.reviewTotal, reviewTotal) ||
                other.reviewTotal == reviewTotal) &&
            (identical(other.discussionTotal, discussionTotal) ||
                other.discussionTotal == discussionTotal) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      discountBeforePrice,
      discountPercentage,
      sold,
      rating,
      const DeepCollectionEquality().hash(_photos),
      description,
      minimumOrder,
      reviewTotal,
      discussionTotal,
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {final int? id,
      final String? name,
      final int? price,
      @JsonKey(name: 'discount_before_price') final int? discountBeforePrice,
      @JsonKey(name: 'discount_percentage') final double? discountPercentage,
      final int? sold,
      final int? rating,
      final List<String>? photos,
      final String? description,
      @JsonKey(name: 'minimum_order') final int? minimumOrder,
      @JsonKey(name: 'review_total') final int? reviewTotal,
      @JsonKey(name: 'discussion_total') final int? discussionTotal,
      final List<Variant>? variants}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

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
  List<String>? get photos;
  @override
  String? get description;
  @override
  @JsonKey(name: 'minimum_order')
  int? get minimumOrder;
  @override
  @JsonKey(name: 'review_total')
  int? get reviewTotal;
  @override
  @JsonKey(name: 'discussion_total')
  int? get discussionTotal;
  @override
  List<Variant>? get variants;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

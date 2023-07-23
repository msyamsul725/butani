import 'package:freezed_annotation/freezed_annotation.dart';

import 'variant.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    int? id,
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
    List<Variant>? variants,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

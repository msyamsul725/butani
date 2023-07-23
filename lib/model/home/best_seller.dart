import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_seller.freezed.dart';
part 'best_seller.g.dart';

@freezed
class BestSeller with _$BestSeller {
  factory BestSeller({
    int? id,
    String? name,
    int? price,
    @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    int? sold,
    int? rating,
    String? thumbnail,
  }) = _BestSeller;

  factory BestSeller.fromJson(Map<String, dynamic> json) =>
      _$BestSellerFromJson(json);
}

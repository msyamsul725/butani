import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured.freezed.dart';
part 'featured.g.dart';

@freezed
class Featured with _$Featured {
  factory Featured({
    int? id,
    String? name,
    int? price,
    @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    int? sold,
    int? rating,
    String? thumbnail,
  }) = _Featured;

  factory Featured.fromJson(Map<String, dynamic> json) =>
      _$FeaturedFromJson(json);
}

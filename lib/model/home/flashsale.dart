import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashsale.freezed.dart';
part 'flashsale.g.dart';

@freezed
class Flashsale with _$Flashsale {
  factory Flashsale({
    int? id,
    String? name,
    int? price,
    @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    int? sold,
    int? rating,
    String? thumbnail,
  }) = _Flashsale;

  factory Flashsale.fromJson(Map<String, dynamic> json) =>
      _$FlashsaleFromJson(json);
}

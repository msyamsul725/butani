import 'package:freezed_annotation/freezed_annotation.dart';

part 'other.freezed.dart';
part 'other.g.dart';

@freezed
class Other with _$Other {
  factory Other({
    int? id,
    String? name,
    int? price,
    @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    int? sold,
    int? rating,
    String? thumbnail,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}

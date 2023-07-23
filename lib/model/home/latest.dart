import 'package:freezed_annotation/freezed_annotation.dart';

part 'latest.freezed.dart';
part 'latest.g.dart';

@freezed
class Latest with _$Latest {
  factory Latest({
    int? id,
    String? name,
    int? price,
    @JsonKey(name: 'discount_before_price') int? discountBeforePrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    int? sold,
    int? rating,
    String? thumbnail,
  }) = _Latest;

  factory Latest.fromJson(Map<String, dynamic> json) => _$LatestFromJson(json);
}

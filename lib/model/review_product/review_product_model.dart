import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'links.dart';
import 'meta.dart';

part 'review_product_model.freezed.dart';
part 'review_product_model.g.dart';

@freezed
class ReviewProductModel with _$ReviewProductModel {
  factory ReviewProductModel({
    List<Datum>? data,
    Links? links,
    Meta? meta,
  }) = _ReviewProductModel;

  factory ReviewProductModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewProductModelFromJson(json);
}

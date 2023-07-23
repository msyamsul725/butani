import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'detail_product_model.freezed.dart';
part 'detail_product_model.g.dart';

@freezed
class DetailProductModel with _$DetailProductModel {
  factory DetailProductModel({
    Product? product,
  }) = _DetailProductModel;

  factory DetailProductModel.fromJson(Map<String, dynamic> json) =>
      _$DetailProductModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'links.dart';
import 'meta.dart';

part 'diskusi_product_model.freezed.dart';
part 'diskusi_product_model.g.dart';

@freezed
class DiskusiProductModel with _$DiskusiProductModel {
  factory DiskusiProductModel({
    List<Datum>? data,
    Links? links,
    Meta? meta,
  }) = _DiskusiProductModel;

  factory DiskusiProductModel.fromJson(Map<String, dynamic> json) =>
      _$DiskusiProductModelFromJson(json);
}

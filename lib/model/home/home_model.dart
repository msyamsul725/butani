import 'package:freezed_annotation/freezed_annotation.dart';

import 'authorize_dealer.dart';
import 'best_seller.dart';
import 'exclusive_distributor.dart';
import 'featured.dart';
import 'flashsale.dart';
import 'latest.dart';
import 'other.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    @JsonKey(name: 'best_seller') List<BestSeller>? bestSeller,
    List<Latest>? latest,
    List<Featured>? featured,
    List<Flashsale>? flashsale,
    List<Other>? other,
    List<ExclusiveDistributor>? exclusiveDistributor,
    List<AuthorizeDealer>? authorizeDealer,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

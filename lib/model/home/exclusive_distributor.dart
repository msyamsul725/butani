import 'package:freezed_annotation/freezed_annotation.dart';

part 'exclusive_distributor.freezed.dart';
part 'exclusive_distributor.g.dart';

@freezed
class ExclusiveDistributor with _$ExclusiveDistributor {
  factory ExclusiveDistributor({
    int? id,
    String? name,
    String? logo,
  }) = _ExclusiveDistributor;

  factory ExclusiveDistributor.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveDistributorFromJson(json);
}

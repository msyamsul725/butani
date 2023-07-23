import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    int? id,
    Customer? customer,
    String? content,
    String? photo,
    int? rating,
    String? time,
    @JsonKey(name: 'time_human') String? timeHuman,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

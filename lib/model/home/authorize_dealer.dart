import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorize_dealer.freezed.dart';
part 'authorize_dealer.g.dart';

@freezed
class AuthorizeDealer with _$AuthorizeDealer {
  factory AuthorizeDealer({
    int? id,
    String? name,
    String? logo,
  }) = _AuthorizeDealer;

  factory AuthorizeDealer.fromJson(Map<String, dynamic> json) =>
      _$AuthorizeDealerFromJson(json);
}

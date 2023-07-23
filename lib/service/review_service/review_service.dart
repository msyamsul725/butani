import 'package:dio/dio.dart';

import '../../model/review_product/review_product_model.dart';

class ReviewProductService {
  final apiUrl = "http://smgdev.top/ecomm/ecomm/product/25/review";
  Future<ReviewProductModel> getReviewProductDetail() async {
    var response = await Dio().get(
      apiUrl,
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      return ReviewProductModel.fromJson(data);
    } else {
      throw Exception('failed to load data');
    }
  }
}

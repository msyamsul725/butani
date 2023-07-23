import 'package:dio/dio.dart';

import '../../common/contant.dart';
import '../../model/detal_product/detail_product_model.dart';
import '../../model/home/home_model.dart';

class DetailProductService {
  final apiUrl = "http://smgdev.top/ecomm/ecomm/product/25";
  Future<DetailProductModel> getProductDetail() async {
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
      return DetailProductModel.fromJson(data);
    } else {
      throw Exception('failed to load data');
    }
  }
}

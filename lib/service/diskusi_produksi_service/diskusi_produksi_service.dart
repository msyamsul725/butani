import 'package:dio/dio.dart';

import '../../model/diskusi_product/diskusi_product_model.dart';

class DiskusiDetailProductService {
  final apiUrl = "http://smgdev.top/ecomm/ecomm/product/25/discussion";
  Future<DiskusiProductModel> getDiskusiProductDetail() async {
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
      return DiskusiProductModel.fromJson(data);
    } else {
      throw Exception('failed to load data');
    }
  }
}
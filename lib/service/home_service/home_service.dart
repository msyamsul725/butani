import 'package:dio/dio.dart';

import '../../common/contant.dart';
import '../../model/home/home_model.dart';

class HomeService {
  final apiUrl = baseUrl;
  Future<HomeModel> getProduct() async {
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
      return HomeModel.fromJson(data);
    } else {
      throw Exception('failed to load data');
    }
  }
}

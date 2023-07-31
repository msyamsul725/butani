import 'package:get/get.dart';
import 'package:logger/logger.dart';
import '../data/weather_model.dart';
import '../data/weather_services.dart';
import '../view/weather_view.dart';

class WeatherController extends GetxController {
  WeatherView? view;

  List<Map<String, dynamic>> dataProduct = [];
  var services = WeatherServices();
  String? errorMessage;
  Weather? weatherData;
  bool loading = false;
  Logger log = Logger();

  @override
  void onInit() async {
    super.onInit();
    await getData();
  }

  getData() async {
    var result = await services.getWeather();

    result.fold(
      (error) {
        errorMessage = error;
      },
      (weather) {
        weatherData = weather;
      },
    );
    log.w(errorMessage);
    log.wtf(weatherData.toString());
    loading = true;
    update();
  }
}

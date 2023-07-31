import 'package:butani/module/weather/data/weather_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';

class WeatherServices {
  String baseUrl = "http://api.weatherapi.com/v1";
  String keytoken = "99177a6f35934c48b7d124924230507";

  Future<Either<String, Weather>> getWeather() async {
    Position position = await Geolocator.getCurrentPosition();
    var latitude = position.latitude;
    var longitude = position.longitude;

    try {
      final response = await Dio()
          .get("$baseUrl/current.json?key=$keytoken&q=$latitude,$longitude");

      return Right(Weather.fromJson(response.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}

import 'package:open_weather_provider_state/exceptions/weather_exception.dart';
import 'package:open_weather_provider_state/models/custom_error.dart';
import 'package:open_weather_provider_state/models/direct_geocoding.dart';
import 'package:open_weather_provider_state/models/weather.dart';
import 'package:open_weather_provider_state/services/weather_api_services.dart';

class WeatherRepository {
  final WeatherApiServices weatherApiServices;

  WeatherRepository({
    required this.weatherApiServices,
  });

  Future<Weather> fetchWeather(String city) async {
    try {
      final DirectGeocoding directGeocoding =
          await weatherApiServices.getDirectGeocoding(city);

      final Weather tempWeather =
          await weatherApiServices.getWeather(directGeocoding);

      final Weather weather = tempWeather.copyWith(
        name: directGeocoding.name,
        country: directGeocoding.country,
      );

      return weather;
    } on WeatherException catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      print(e);
      rethrow;
      // throw CustomError(errMsg: e.toString());
    }
  }
}

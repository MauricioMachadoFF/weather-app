import 'package:weather_app/data/models/weather_response_model.dart';
import 'package:weather_app/domain/entities/weather_response.dart';

abstract class WeatherResponseMapper {
  WeatherResponse fromModel({
    required WeatherResponseModel model,
  }) {
    final weatherDescription = model.weatherDescription
        .map((description) => WeatherDescription(
              simpleDescription: description.simpleDescription,
              fullDescription: description.description,
            ))
        .toList();
    final mainWeatherResponse = MainWeatherResponse(
      temperatureNow: model.main.temperature,
      thermalSensation: model.main.thermalSensation,
      maxTemperature: model.main.maxTemperature,
      minTemperature: model.main.maxTemperature,
      pressure: model.main.pressure,
      humidity: model.main.humidity,
    );
    return WeatherResponse(
      weatherDescription: weatherDescription,
      mainWeatherResponse: mainWeatherResponse,
      location: model.location,
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/entities/weather_response.dart';

abstract class GetWeatherNow {
  Future<Either<Exception, WeatherResponse>> call();
}

class GetWeatherNowImpl implements GetWeatherNow {
  @override
  Future<Either<Exception, WeatherResponse>> call() async {
    const weatherResponse = WeatherResponse(
      weatherDescription: [
        WeatherDescription(
          simpleDescription: 'Clear',
          fullDescription: 'Clear sky',
        )
      ],
      mainWeatherResponse: MainWeatherResponse(
        temperatureNow: 24.5,
        thermalSensation: 24.01,
        maxTemperature: 26.45,
        minTemperature: 21.23,
        pressure: 1020,
        humidity: 38,
      ),
      location: 'Brasília',
    );
    //TODO(Mauricio-Machado): remove mocked response
    return const Right(weatherResponse);
  }
}

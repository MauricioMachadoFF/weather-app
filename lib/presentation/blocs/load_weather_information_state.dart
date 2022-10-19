part of 'load_weather_information_cubit.dart';

@freezed
class LoadWeatherState with _$LoadWeatherState {
  const factory LoadWeatherState.error() = _Error;

  const factory LoadWeatherState.loading() = _Loading;

  const factory LoadWeatherState.loaded(
    WeatherResponse weather,
  ) = _Loaded;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponseModel _$WeatherResponseModelFromJson(
        Map<String, dynamic> json) =>
    WeatherResponseModel(
      weatherDescription: (json['weather'] as List<dynamic>)
          .map((e) =>
              WeatherDescriptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: MainWeatherResponseModel.fromJson(
          json['main'] as Map<String, dynamic>),
      location: json['name'] as String,
    );

WeatherDescriptionModel _$WeatherDescriptionModelFromJson(
        Map<String, dynamic> json) =>
    WeatherDescriptionModel(
      simpleDescription: json['main'] as String,
      description: json['description'] as String,
    );

MainWeatherResponseModel _$MainWeatherResponseModelFromJson(
        Map<String, dynamic> json) =>
    MainWeatherResponseModel(
      temperature: (json['temp'] as num).toDouble(),
      thermalSensation: (json['feels_like'] as num).toDouble(),
      maxTemperature: (json['temp_max'] as num).toDouble(),
      minTemperature: (json['temp_min'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
    );

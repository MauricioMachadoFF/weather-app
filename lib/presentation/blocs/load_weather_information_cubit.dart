import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entities/weather_response.dart';
import 'package:weather_app/domain/usecases/get_weather_now.dart';

part 'load_weather_information_cubit.freezed.dart';
part 'load_weather_information_state.dart';

class LoadWeatherCubit extends Cubit<LoadWeatherState> {
  final GetWeatherNow getWeatherNow;
  LoadWeatherCubit({
    required this.getWeatherNow,
  }) : super(
          const LoadWeatherState.loading(),
        );

  Future<void> loadWeatherNow() async {
    emit(const LoadWeatherState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final weatherOrFail = await getWeatherNow.call();
    emit(
      weatherOrFail.fold(
        (_) => const LoadWeatherState.error(),
        LoadWeatherState.loaded,
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/design_system/spacers/vertical_spacer.dart';
import 'package:weather_app/design_system/spacing.dart';
import 'package:weather_app/domain/usecases/get_weather_now.dart';
import 'package:weather_app/presentation/blocs/load_weather_information_cubit.dart';
import 'package:weather_app/presentation/pages/error_page.dart';
import 'package:weather_app/presentation/pages/loading_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoadWeatherCubit(
        getWeatherNow: GetWeatherNowImpl(),
      )..loadWeatherNow(),
      child: BlocBuilder<LoadWeatherCubit, LoadWeatherState>(
        builder: (context, state) {
          return state.when(
            error: ErrorPage.new,
            loading: () => const LoadingPage(
              loadingMessage: 'Carregando informações de tempo',
            ),
            loaded: (weather) => const _HomePage(),
          );
        },
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/raining.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: spacingXXXS,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.pin_drop_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'Tuscany',
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                    ),
                          )
                        ],
                      ),
                      const VSpacer.xxs(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '23',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "It's Raining",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.fromLTRB(
                    spacingXXXS,
                    spacingXXS,
                    spacingXXXS,
                    spacingXS,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Weather Today',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const VSpacer.lg(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

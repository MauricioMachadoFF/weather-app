import 'package:flutter/material.dart';
import 'package:weather_app/design_system/design_system.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: spacingXXXS,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Icon(
              Icons.error_outlined,
              color: Colors.red,
              size: iconSizeXXL,
            ),
            const VSpacer.nano(),
            Text(
              'Ops! Algo deu errado!',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const VSpacer.quarck(),
            Text(
              'Não conseguimos carregar as informações do tempo! Tente novamente mais tarde.',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

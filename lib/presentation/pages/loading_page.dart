import 'package:flutter/material.dart';
import 'package:weather_app/design_system/design_system.dart';

class LoadingPage extends StatelessWidget {
  final String loadingMessage;
  const LoadingPage({
    super.key,
    this.loadingMessage = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: iconSizeXXL,
              width: iconSizeXXL,
              child: CircularProgressIndicator(
                strokeWidth: spacingQuarck,
                // valueColor: AlwaysStoppedAnimation<Color>(
                //   //TODO(Mauricio-Machado): Define and use DS colors
                // ),
              ),
            ),
            const VSpacer.xs(),
            Text(
              loadingMessage,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

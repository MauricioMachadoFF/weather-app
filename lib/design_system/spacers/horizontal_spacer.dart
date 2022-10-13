import 'package:flutter/material.dart';
import 'package:weather_app/design_system/spacing.dart';

class HSpacer extends StatelessWidget {
  final double size;

  const HSpacer({
    Key? key,
    required this.size,
  }) : super(key: key);

  ///Height `2px`
  const HSpacer.atom({Key? key})
      : size = spacingAtom,
        super(key: key);

  ///Height `4px`
  const HSpacer.quarck({Key? key})
      : size = spacingQuarck,
        super(key: key);

  ///Height `8px`
  const HSpacer.nano({Key? key})
      : size = spacingNano,
        super(key: key);

  ///Height `16px`
  const HSpacer.xxxs({Key? key})
      : size = spacingXXXS,
        super(key: key);

  ///Height `24px`
  const HSpacer.xxs({Key? key})
      : size = spacingXXS,
        super(key: key);

  ///Height `32px`
  const HSpacer.xs({Key? key})
      : size = spacingXS,
        super(key: key);

  ///Height `40px`
  const HSpacer.sm({Key? key})
      : size = spacingSM,
        super(key: key);

  ///Height `64px`
  const HSpacer.lg({Key? key})
      : size = spacingLG,
        super(key: key);

  ///Height `80px`
  const HSpacer.xl({Key? key})
      : size = spacingXL,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}

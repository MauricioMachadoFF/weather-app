import 'package:flutter/material.dart';
import 'package:weather_app/design_system/spacing.dart';

class VSpacer extends StatelessWidget {
  final double size;

  const VSpacer({
    Key? key,
    required this.size,
  }) : super(key: key);

  ///Height `2px`
  const VSpacer.atom({Key? key})
      : size = spacingAtom,
        super(key: key);

  ///Height `4px`
  const VSpacer.quarck({Key? key})
      : size = spacingQuarck,
        super(key: key);

  ///Height `8px`
  const VSpacer.nano({Key? key})
      : size = spacingNano,
        super(key: key);

  ///Height `16px`
  const VSpacer.xxxs({Key? key})
      : size = spacingXXXS,
        super(key: key);

  ///Height `24px`
  const VSpacer.xxs({Key? key})
      : size = spacingXXS,
        super(key: key);

  ///Height `32px`
  const VSpacer.xs({Key? key})
      : size = spacingXS,
        super(key: key);

  ///Height `40px`
  const VSpacer.sm({Key? key})
      : size = spacingSM,
        super(key: key);

  ///Height `64px`
  const VSpacer.lg({Key? key})
      : size = spacingLG,
        super(key: key);

  ///Height `80px`
  const VSpacer.xl({Key? key})
      : size = spacingXL,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}

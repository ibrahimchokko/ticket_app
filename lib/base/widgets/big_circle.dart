import 'package:absolute_beginner/base/res/style/app_styles.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRigth;
  const BigCircle({super.key, required this.isRigth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppStyles.bgColor,
              borderRadius: isRigth == true
                  ? const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ))),
    );
  }
}

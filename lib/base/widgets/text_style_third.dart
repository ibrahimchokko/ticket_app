import 'package:absolute_beginner/base/res/style/app_styles.dart';
import 'package:flutter/material.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "NYC",
      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}

import 'package:absolute_beginner/base/res/style/app_styles.dart';
import 'package:flutter/material.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}

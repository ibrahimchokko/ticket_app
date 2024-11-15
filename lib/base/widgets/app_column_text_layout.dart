import 'package:absolute_beginner/base/widgets/text_style_forth.dart';
import 'package:absolute_beginner/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottonText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottonText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
          text: topText,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleForth(
          text: bottonText,
        ),
      ],
    );
  }
}

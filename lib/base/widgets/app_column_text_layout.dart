import 'package:absolute_beginner/base/widgets/text_style_forth.dart';
import 'package:absolute_beginner/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextStyleThird(
          text: "1 OCT",
        ),
        SizedBox(
          height: 5,
        ),
        const TextStyleForth(
          text: "Date",
        ),
      ],
    );
  }
}

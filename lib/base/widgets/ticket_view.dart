import 'package:absolute_beginner/base/res/style/app_styles.dart';
import 'package:absolute_beginner/base/widgets/app_layoutbuilder_widget.dart';
import 'package:absolute_beginner/base/widgets/big_circle.dart';
import 'package:absolute_beginner/base/widgets/big_dot.dart';
import 'package:absolute_beginner/base/widgets/text_style_forth.dart';
import 'package:absolute_beginner/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue side of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(21),
                      topLeft: Radius.circular(21))),
              child: Column(
                children: [
                  //show departure and destination with icon first line
                  Row(
                    children: [
                      const TextStyleThird(
                        text: "NYC",
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                              )),
                          Center(
                              child: Transform.rotate(
                                  angle: 0,
                                  child: const Icon(Icons.bus_alert,
                                      color: Colors.white))),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(
                        text: "LDN",
                      ),
                    ],
                  ),
                  //show departure and destination names with time
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleForth(
                          text: "New-York",
                        ),
                      ),
                      Expanded(child: Container()),
                      const TextStyleForth(
                        text: "8H 30m",
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleForth(
                          text: "London",
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRigth: true,
                  ),
                  Expanded(
                      child: AppLayoutbuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRigth: false,
                  )
                ],
              ),
            ),
            //circles and dots in-between
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21))),
              //orange card of the ticket
              child: const Column(
                children: [
                  //show departure and destination with icon first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleThird(
                            text: "1 OCT",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextStyleForth(
                            text: "Date",
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleThird(
                            text: "08:00AM",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextStyleForth(
                            text: "Departure time",
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(
                            text: "23",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextStyleForth(
                            text: "Number",
                          ),
                        ],
                      ),
                      // Expanded(child: Container()),
                      // const TextStyleThird(
                      //   text: "08:00Am",
                      // ),
                      // Expanded(child: Container()),
                      // const TextStyleThird(
                      //   text: "23",
                      // ),
                    ],
                  ),
                  //show departure and destination names with time
                  /*Row(
                    children: [
                      const TextStyleForth(
                        text: "date",
                      ),
                      Expanded(child: Container()),
                      const TextStyleForth(
                        text: "departure time",
                      ),
                      Expanded(child: Container()),
                      const TextStyleForth(
                        text: "Number",
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

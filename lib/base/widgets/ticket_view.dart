import 'package:absolute_beginner/base/res/style/app_styles.dart';
import 'package:absolute_beginner/base/widgets/app_layoutbuilder_widget.dart';
import 'package:absolute_beginner/base/widgets/big_circle.dart';
import 'package:absolute_beginner/base/widgets/big_dot.dart';
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
                      const TextStyleThird(),
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
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  //show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-york",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
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
              child: Column(
                children: [
                  //show departure and destination with icon first line
                  Row(
                    children: [
                      Text(
                        "1 OCT",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "08 : 00AM",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "23",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  //show departure and destination names with time
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure Time",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'dart:math' as math;

import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> flight;
  const TicketView({Key? key, required this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      //width: size.width * 0.8,
      width: AppLayout.getWidth(350),
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          children: [
            // The blue top part of the ticket
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(AppLayout.getHeight(21)),
                  bottom: Radius.zero,
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        flight['from']['code'],
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Transform.rotate(
                              angle: math.pi / 180 * 90,
                              child: Icon(
                                Icons.local_airport,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    direction: Axis.horizontal,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6).round(),
                                      (index) => const SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        flight['to']['code'],
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          flight['from']['name'],
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        flight['flying_time'],
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          flight['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // The red middle part of the ticket line
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.zero,
                            right: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //mainAxisSize: MainAxisSize.max,
                              direction: Axis.horizontal,
                              children: List.generate(
                                (constraints.constrainWidth() / 20).round(),
                                (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.zero,
                            left: Radius.circular(
                              AppLayout.getHeight(10),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            // The red bottom part of the ticket
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(
                    AppLayout.getHeight(21),
                  ),
                  top: Radius.zero,
                ),
              ),
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(20),
                top: AppLayout.getHeight(5),
                bottom: AppLayout.getHeight(20),
                right: AppLayout.getHeight(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            flight['date'],
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            flight['departure_time'],
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${flight['number']}",
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

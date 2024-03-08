import 'package:ai_app/helper/global.dart';
import 'package:ai_app/model/home_type.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.homeType});
  final HomeType homeType;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 191, 226, 244),
      elevation: 2,
      margin: EdgeInsets.only(bottom: mq.height * .02, top: mq.height * .01),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: homeType.leftAlign
          ? Row(
              children: [
                Lottie.asset('assets/lottie/${homeType.lottie}',
                    width: mq.width * .38),

                //title
                Text(
                  homeType.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 20),
                ),
              ],
            )
          : Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                //title
                Text(
                  homeType.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 20),
                ),
                const Spacer(
                  flex: 1,
                ),
                Lottie.asset('assets/lottie/${homeType.lottie}',
                    width: mq.width * .38),
              ],
            ),
    );
  }
}

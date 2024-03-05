import 'package:ai_app/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 127, 226, 233),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Lottie.asset('assets/lottie/chat_bot.json', width: mq.width * .38),

          const Spacer(),
          //title
          const Text(
            'Ai dotBot',
            style: TextStyle(
                fontWeight: FontWeight.w500, letterSpacing: .5, fontSize: 25),
          ),
          const Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }
}

import 'package:ai_app/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //lottie
          SizedBox(
            height: mq.height * .10,
          ),
          Lottie.asset('assets/lottie/ask_me.json'),

          //title
          const Text(
            "Ask me Anything",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),
          ),

          SizedBox(height: mq.height * .02),
          //subtitle
          SizedBox(
            width: mq.width * .7,
            child: const Text(
              'You can ask me anything and I will try to help you !',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14, letterSpacing: .5, color: Colors.black54),
            ),
          ),
          const Spacer(),

          //dots
          Wrap(
            spacing: 10,
            children: List.generate(
                2,
                (i) => Container(
                      height: 8,
                      width: 10,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                    )),
          ),

          const Spacer(),
          //button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                minimumSize: Size(mq.width * .4, 50)),
            child: const Text('Next'),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}

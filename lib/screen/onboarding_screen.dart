import 'package:ai_app/helper/global.dart';
import 'package:ai_app/model/onboard.dart';
import 'package:ai_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();

    final list = [
      Onboard(
          title: "Ask me Anything",
          subtitle: 'You can ask me anything and I will try to help you !',
          lottie: 'ask_me'),
      Onboard(
          title: "Imagination to reality",
          subtitle:
              'Just imagine anything and let me know, I will help you to create it !!',
          lottie: 'thinking_bot'),
    ];

    return Scaffold(
        body: PageView.builder(
      controller: c,
      itemCount: list.length,
      itemBuilder: (ctx, ind) {
        final isLast = ind == list.length - 1;
        return Column(
          children: [
            //lottie

            Lottie.asset('assets/lottie/${list[ind].lottie}.json',
                height: mq.height * .6, width: isLast ? mq.width * .7 : null),
            //title
            Text(
              list[ind].title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),

            SizedBox(height: mq.height * .02),
            //subtitle
            SizedBox(
              width: mq.width * .7,
              child: Text(
                list[ind].subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 14, letterSpacing: .5, color: Colors.black54),
              ),
            ),
            const Spacer(),

            //dots
            Wrap(
              spacing: 10,
              children: List.generate(
                  list.length,
                  (i) => Container(
                        height: 8,
                        width: i == ind ? 15 : 10,
                        decoration: BoxDecoration(
                          color: i == ind ? Colors.blue : Colors.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(3)),
                        ),
                      )),
            ),

            const Spacer(),
            //button
            ElevatedButton(
              onPressed: () {
                if (isLast) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomeScreen()));
                } else {
                  c.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  minimumSize: Size(mq.width * .4, 50)),
              child: Text(isLast ? 'Finish' : 'Next'),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        );
      },
    ));
  }
}

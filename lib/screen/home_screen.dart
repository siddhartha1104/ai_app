import 'package:ai_app/helper/pref.dart';
import 'package:ai_app/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../helper/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  //to end fullscreen mode
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    //Initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'dotBot',
          style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 1.5),
        ),
        //action button -> Night mode button
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: 10),
              onPressed: () {
                //todo  DarkMode code
                // ..
              },
              icon: const Icon(
                Icons.brightness_6_rounded,
                size: 26,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: mq.width * .03, vertical: mq.height * .01),
        children: const [HomeCard()],
      ),
    );
  }
}

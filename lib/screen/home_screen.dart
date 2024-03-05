import 'package:ai_app/helper/pref.dart';
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

    return const Scaffold(
      body: Center(child: Text('Home Screen')),
    );
  }
}

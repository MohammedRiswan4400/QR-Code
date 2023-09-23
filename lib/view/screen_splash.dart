import 'package:flutter/material.dart';
import 'package:qr_code/view/screen_home.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "QR Code",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

Future gotoHome(context) async {
  await Future.delayed(const Duration(seconds: 3));
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => const ScreenHome(),
    ),
  );
}

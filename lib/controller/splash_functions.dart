import 'package:flutter/material.dart';
import 'package:qr_code/view/screen_home.dart';

Future gotoHome(context) async {
  await Future.delayed(const Duration(seconds: 3));
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => const ScreenHome(),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:qr_code/view/screen_scanner.dart';
import '../view/screen_generator.dart';

void gotoScanner(context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const ScreenScanner(),
    ),
  );
}

void gotoGenerator(context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const ScreenGenerator(),
    ),
  );
}

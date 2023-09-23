import 'package:flutter/material.dart';
import 'package:qr_code/controller/home_functions.dart';

import '../model/home_widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const HomeTitle(),
            GestureDetector(
              onTap: () {
                gotoGenerator(context);
              },
              child: const CostomeQrContainer(
                text: "Generator",
              ),
            ),
            GestureDetector(
              onTap: () {
                gotoScanner(context);
              },
              child: const CostomeQrContainer(
                text: "Scanner",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

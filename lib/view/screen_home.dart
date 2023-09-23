import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // blurStyle: BlurStyle.normal,
                    blurRadius: 3,
                    offset: Offset(
                      5,
                      5,
                    ),
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [
                    // Color.fromARGB(255, 0, 255, 242),
                    Color.fromARGB(255, 48, 59, 125),
                    Color.fromARGB(255, 0, 255, 76),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "QR Code",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            CostomeQrContainer(
              text: "Generator",
            ),
            CostomeQrContainer(
              text: "Scanner",
            ),
          ],
        ),
      ),
    );
  }
}

class CostomeQrContainer extends StatelessWidget {
  const CostomeQrContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Image.asset(
              "assets/qr-code-scanning.jpg",
              scale: 4,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 100,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   width: 3,
                  // ),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                // decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 0, 255, 128),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

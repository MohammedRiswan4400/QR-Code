import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
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
        gradient: const LinearGradient(
          colors: [
            // Color.fromARGB(255, 0, 255, 242),
            Color.fromARGB(255, 48, 59, 125),
            Color.fromARGB(255, 0, 255, 76),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          "QR Code",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
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
                decoration: const BoxDecoration(
                  // border: Border.all(
                  //   width: 3,
                  // ),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                // decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(
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

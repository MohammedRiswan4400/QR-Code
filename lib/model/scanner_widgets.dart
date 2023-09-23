import 'package:flutter/material.dart';
import 'generator_widgets.dart';

class ScanWidgets extends StatelessWidget {
  const ScanWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          CostomeAppBar(
            title: "Scan Qr Code",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Please Scan Your QR Code",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../model/generator_widgets.dart';

class ScreenGenerator extends StatefulWidget {
  const ScreenGenerator({super.key});

  @override
  State<ScreenGenerator> createState() => _ScreenGeneratorState();
}

class _ScreenGeneratorState extends State<ScreenGenerator> {
  String qrData = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CostomeAppBar(
              title: "Generate Qr Code",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter data to Generate QR Code",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                onChanged: (value) {
                  setState(
                    () {
                      qrData = value;
                    },
                  );
                },
                // controller: passwordController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: const Color.fromARGB(28, 158, 158, 158),
                  hintText: "Enter Data",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(177, 158, 158, 158),
                  ),
                ),
                // obscureText: true,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            qrData.isEmpty
                ? const SizedBox()
                : QrImageView(
                    data: qrData,
                    version: QrVersions.auto,
                    size: 200,
                    backgroundColor: Colors.white,
                  ),
          ],
        ),
      ),
    );
  }
}

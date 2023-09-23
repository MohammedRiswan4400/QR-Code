import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
          SizedBox(
            height: 20,
          ),
          Text(
            "Enter data to Generate QR Code",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  qrData = value;
                });
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
          SizedBox(
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
    ));
  }
}

class CostomeAppBar extends StatelessWidget {
  const CostomeAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            // topRight: Radius.circular(70),
          ),
          color: Color.fromARGB(255, 28, 28, 28),
        ),
        height: 100,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// ignore_for_file: override_on_non_overriding_member

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../model/scanner_widgets.dart';

class ScreenScanner extends StatefulWidget {
  const ScreenScanner({super.key});

  @override
  State<ScreenScanner> createState() => _ScreenScannerState();
}

class _ScreenScannerState extends State<ScreenScanner> {
  final qrDataController = TextEditingController();
  final qrKey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  Barcode? barcode;
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void ressemble() async {
    super.reassemble();

    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: onQRViewCreated,
            overlay: QrScannerOverlayShape(
              cutOutSize: MediaQuery.of(context).size.width * 0.8,
              borderWidth: 10,
              borderRadius: 40,
              borderColor: const Color.fromARGB(255, 0, 255, 76),
            ),
          ),
          Positioned(
            bottom: 50,
            child: Text(
              barcode != null ? "Result : ${barcode!.code}" : "Scan a Code!",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              maxLines: 3,
            ),
          ),
          const ScanWidgets(),
        ],
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen(
      (barcode) => setState(
        () {
          this.barcode = barcode;
        },
      ),
    );
  }
}

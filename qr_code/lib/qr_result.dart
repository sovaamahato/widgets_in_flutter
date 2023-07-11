import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrResult extends StatelessWidget {
  String code;
  Function() closeScreen;
  QrResult({required this.code, required this.closeScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Scanned Result")),

      body: Column(children: [
        QrImage(data: code,size: 150, version: QrVersions.auto,),
        Text("Qr Result:"),
        SizedBox(height: 20,),
        Text(code),
        
      ]),
    );
  }
}
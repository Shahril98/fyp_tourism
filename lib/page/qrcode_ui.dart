// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, import_of_legacy_library_into_null_safe, avoid_print, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'aboutus_ui.dart';

class QRScannerUI extends StatefulWidget {
  @override
  State<QRScannerUI> createState() => _QRScannerUIState();
}

class _QRScannerUIState extends State<QRScannerUI> {
  String qrString = "Not Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsUI()));
                },
                icon: Image.asset('img/logo/logo.png'),
                iconSize: 50,
              ),
              Spacer(),
              Center(
                child: Text(
                  "Scan Places",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              Spacer(),
              Spacer(),
            ],
          )),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage('img/tourismscan.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Center(
                  child: Image(
                width: 200,
                image: AssetImage(
                  'img/logo/logo.png',
                ),
              )),
              height: 250,
            ),
            Expanded(
                child: Center(
              child: Container(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Expanded(
                        flex: 0,
                        child: Container(
                            margin: EdgeInsets.all(10),
                            child: Center(
                                child: Text(
                              'CHECK-IN',
                              style: TextStyle(fontSize: 30),
                            )))),
                    Expanded(
                        flex: 0,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            child: Center(
                                child: Text(
                              'Scan the qr code which indicate that you arrived there by using our app!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )))),
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(
                                  color: Colors.black45,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.all(10),
                            child: Center(
                                child: Text(
                              qrString,
                              style: TextStyle(fontSize: 19, fontFamily: ''),
                            )))),
                  ],
                ),
              ),
            )),
            Expanded(
                flex: 0,
                child: SizedBox(
                  width: double.infinity,

                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      color: Colors.white,
                      textColor: Colors.black,
                      child: Text('Scan'),
                      onPressed: scanQR), //RaisedButton
                ))
          ],
        ),
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrString = value;
        });
      });
    } catch (e) {
      setState(() {
        qrString = "Unable to read QR";
      });
    }
  }
}

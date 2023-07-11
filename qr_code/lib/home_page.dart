import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "QR Scanner",
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Column(children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Place QR Code in this area",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "scanning will be started automatically",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
                flex: 4,
                child: Container(
                  // child: MobileScanner(
                  //   // allowDublicates:true,
                  //   onDetect: (barcodes) {
                  //     if (!isScancomplete) {
                  //       String code =barcodes.raw??'...';
                  //       isScancomplete=true;
                  //       Navigator.push(context,MaterialPageRoute(builder: ((context){
                  //         return QrResult(code: code, closeScreen: scanClose,);
                  //       })));
                  //     }
                  //   },
                  // ),
                )),
            Expanded(
                child: Container(
              child: Column(
                children: [
                 SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Developed By:Sova kushwaha",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   "scanning will be started automatically",
                  //   style: TextStyle(
                  //     fontSize: 12,
                  //       color: Colors.black,),
                  // ),
                ],
              ),
            )),
          ]),
        ),
      ),
    );;
  }
}